param(
    [switch]$NoLaunch,
    [switch]$Force,
    [switch]$VerifyAll,
    [switch]$PrepareBuild
)

$ErrorActionPreference = "Stop"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Set-Location -LiteralPath $PSScriptRoot

$configPath = Join-Path $PSScriptRoot "updater-config.json"
$pendingPath = Join-Path $PSScriptRoot ".updater-pending.json"
if ($PrepareBuild) { $VerifyAll = [switch]$true; $NoLaunch = [switch]$true }
$cachePath  = Join-Path $PSScriptRoot ".updater-manifest.json"

if (!(Test-Path -LiteralPath $configPath)) {
    Write-Host "ERROR: updater-config.json was not found." -ForegroundColor Red
    exit 1
}

$config = Get-Content -LiteralPath $configPath -Raw | ConvertFrom-Json

function Write-Status([string]$Text, [ConsoleColor]$Color = [ConsoleColor]::Gray) {
    Write-Host "[Updater] $Text" -ForegroundColor $Color
}

# Keep the stage progress visible while hiding WebRequest's flashing read banner.
function Get-PointerResponse([string]$Uri) {
    $ProgressPreference = 'SilentlyContinue'
    return Invoke-WebRequest -UseBasicParsing -Uri $Uri -Headers (Get-Headers)
}

function Show-CheckProgress([int]$Id, [string]$Activity, [int]$Done, [int]$Total, $Timer, [string]$CurrentFile) {
    $percent = if ($Total -gt 0) { [int][Math]::Floor(100.0 * $Done / $Total) } else { 100 }
    $remaining = -1
    $eta = 'Estimating time remaining...'
    if ($Done -gt 0 -and $Timer.Elapsed.TotalSeconds -ge 2) {
        $remaining = [int][Math]::Min([int]::MaxValue, [Math]::Ceiling($Timer.Elapsed.TotalSeconds * ($Total - $Done) / $Done))
        $eta = 'About {0}m {1}s remaining' -f [Math]::Floor($remaining / 60), ($remaining % 60)
    }
    Write-Progress -Id $Id -Activity $Activity -Status "$percent% | $Done / $Total files | $eta" -CurrentOperation $CurrentFile -PercentComplete $percent -SecondsRemaining $remaining
}

function Normalize-RepoPath([string]$Path) {
    if ($Path -match '(^[\\/]|:|(^|[\\/])\.\.([\\/]|$))') { throw "Unsafe repository path: $Path" }
    return ($Path -replace "\\", "/").TrimStart("/")
}

function Is-Excluded([string]$RepoPath) {
    $p = Normalize-RepoPath $RepoPath
    # Windows Explorer metadata is not game content, even when tracked by Git.
    $leaf = ($p -split '/')[-1]
    if ($leaf -ieq 'desktop.ini' -or $leaf -ieq 'Thumbs.db') { return $true }
    # Launcher control files are protected even when using older configs.
    if ($p -in @('IKEMEN-Updater.ps1', 'Update-and-Play.bat', 'updater-config.json', '.updater-manifest.json', '.updater-manifest.json.tmp', '.updater-pending.json', '.updater-pending.json.tmp', 'Prepare-Build.bat', 'Verify-and-Repair.bat', 'README-Updater.txt')) { return $true }
    if ($p.EndsWith('.updater_tmp', [StringComparison]::OrdinalIgnoreCase)) { return $true }

    foreach ($file in @($config.ExcludeFiles)) {
        if ($p -ieq (Normalize-RepoPath $file)) { return $true }
    }

    foreach ($prefix in @($config.ExcludePrefixes)) {
        $n = Normalize-RepoPath $prefix
        if ($n -and ($p -ieq $n -or $p.StartsWith($n.TrimEnd("/") + "/", [System.StringComparison]::OrdinalIgnoreCase))) {
            return $true
        }
    }

    return $false
}

function Get-GitBlobSha1([string]$FilePath) {
    $stream = [IO.File]::OpenRead($FilePath)
    $sha1 = [Security.Cryptography.SHA1]::Create()
    try {
        $header = [Text.Encoding]::UTF8.GetBytes("blob $($stream.Length)`0")
        [void]$sha1.TransformBlock($header, 0, $header.Length, $header, 0)
        $buffer = New-Object byte[] 1048576
        while (($count = $stream.Read($buffer, 0, $buffer.Length)) -gt 0) {
            [void]$sha1.TransformBlock($buffer, 0, $count, $buffer, 0)
        }
        [void]$sha1.TransformFinalBlock((New-Object byte[] 0), 0, 0)
        return ([BitConverter]::ToString($sha1.Hash)).Replace("-", "").ToLowerInvariant()
    } finally { $stream.Dispose(); $sha1.Dispose() }
}

function Test-Entry([string]$FilePath, $Entry) {
    if (!(Test-Path -LiteralPath $FilePath -PathType Leaf)) { return $false }
    if ((Get-Item -LiteralPath $FilePath -Force).Length -ne $Entry.Size) { return $false }
    if ($Entry.LfsOid) {
        return ((Get-FileHash -LiteralPath $FilePath -Algorithm SHA256).Hash -ieq $Entry.LfsOid)
    }
    return ((Get-GitBlobSha1 $FilePath) -eq $Entry.Sha)
}

function Get-LfsDownload($Entry) {
    $headers = @{ 'User-Agent' = 'IKEMEN-GitHub-Updater'; Accept = 'application/vnd.git-lfs+json' }
    if ($env:GITHUB_TOKEN) {
        $basic = [Convert]::ToBase64String([Text.Encoding]::UTF8.GetBytes("x-access-token:$($env:GITHUB_TOKEN)"))
        $headers.Authorization = "Basic $basic"
    }
    $body = @{ operation = 'download'; transfers = @('basic'); objects = @(@{oid = $Entry.LfsOid; size = $Entry.Size}) } | ConvertTo-Json -Depth 6
    $result = Invoke-RestMethod -UseBasicParsing -Method Post -Uri "https://github.com/$owner/$repo.git/info/lfs/objects/batch" -Headers $headers -ContentType 'application/vnd.git-lfs+json' -Body $body
    $obj = @($result.objects) | Where-Object { $_.oid -eq $Entry.LfsOid } | Select-Object -First 1
    if (!$obj -or $obj.error -or !$obj.actions.download.href) {
        throw "Git LFS cannot provide $($Entry.Path). Check repository access, uploaded LFS objects, and bandwidth allowance."
    }
    $url = [Uri]$obj.actions.download.href
    if ($url.Scheme -ne 'https') { throw 'LFS download URL must use HTTPS.' }
    $downloadHeaders = @{'User-Agent' = 'IKEMEN-GitHub-Updater'}
    if ($obj.actions.download.header) {
        foreach ($prop in $obj.actions.download.header.PSObject.Properties) { $downloadHeaders[$prop.Name] = [string]$prop.Value }
    }
    return @{ Uri = $url.AbsoluteUri; Headers = $downloadHeaders }
}

function Get-Headers {
    $headers = @{
        "User-Agent" = "IKEMEN-GitHub-Updater"
        "Accept" = "application/vnd.github+json"
        "X-GitHub-Api-Version" = "2022-11-28"
    }

    # Optional: set environment variable GITHUB_TOKEN to increase GitHub API rate limits
    if ($env:GITHUB_TOKEN) {
        $headers["Authorization"] = "Bearer $($env:GITHUB_TOKEN)"
    }

    return $headers
}

function Invoke-GitHubJson([string]$Uri) {
    return Invoke-RestMethod -UseBasicParsing -Uri $Uri -Headers (Get-Headers) -Method Get
}

function Download-File([string]$Uri, [string]$Destination, $Entry, [hashtable]$Headers) {
    $ProgressPreference = "SilentlyContinue"
    $parent = Split-Path -Parent $Destination
    if ($parent -and !(Test-Path -LiteralPath $parent)) {
        New-Item -ItemType Directory -Force -Path $parent | Out-Null
    }

    $tmp = "$Destination.updater_tmp"
    if (Test-Path -LiteralPath $tmp) {
        Remove-Item -LiteralPath $tmp -Force
    }

    try {
        Invoke-WebRequest -UseBasicParsing -Uri $Uri -Headers $Headers -OutFile $tmp
        if (!(Test-Entry $tmp $Entry)) { throw "Hash/size verification failed for $($Entry.Path); original file preserved." }
        Move-Item -LiteralPath $tmp -Destination $Destination -Force
    }
    catch {
        if (Test-Path -LiteralPath $tmp) {
            Remove-Item -LiteralPath $tmp -Force -ErrorAction SilentlyContinue
        }
        throw
    }
}

function Start-Game {
    if ($NoLaunch.IsPresent) { return }
    $exePath = Join-Path $PSScriptRoot (Normalize-RepoPath $gameExe)
    if (!(Test-Path -LiteralPath $exePath -PathType Leaf)) {
        throw "Game executable is missing: $gameExe. Run Verify-and-Repair.bat."
    }
    Write-Status "Launching $gameExe..." Green
    Start-Process -FilePath $exePath -WorkingDirectory $PSScriptRoot
}

$owner = [string]$config.Owner
$repo = [string]$config.Repo
$branch = [string]$config.Branch
$gameExe = [string]$config.GameExe

if ([string]::IsNullOrWhiteSpace($owner) -or [string]::IsNullOrWhiteSpace($repo) -or [string]::IsNullOrWhiteSpace($branch)) {
    Write-Status "Owner, Repo, and Branch must be set in updater-config.json." Red
    exit 1
}

Write-Status "Checking $owner/$repo ($branch)..." Cyan

$escapedBranch = [Uri]::EscapeDataString($branch)
$commitUri = "https://api.github.com/repos/$owner/$repo/commits/$escapedBranch"
$commit = Invoke-GitHubJson $commitUri
$commitSha = [string]$commit.sha
$latestCommit = $commitSha
if (Test-Path -LiteralPath $pendingPath) {
    $pending = Get-Content -LiteralPath $pendingPath -Raw | ConvertFrom-Json
    if ($pending.Repo -ne "$owner/$repo" -or $pending.Branch -ne $branch -or $pending.Commit -notmatch '^[0-9a-f]{40}$') {
        throw 'Unfinished update belongs to a different repository or is invalid. Restore the original configuration before retrying.'
    }
    $commitSha = [string]$pending.Commit
    Write-Status 'Finishing the interrupted update before checking a later version.' Yellow
}

$oldManaged = @()
if (Test-Path -LiteralPath $cachePath) {
    try {
        $oldCache = Get-Content -LiteralPath $cachePath -Raw | ConvertFrom-Json
        if ($oldCache.Repo -eq "$owner/$repo" -and $oldCache.Branch -eq $branch) {
            $oldManaged = @($oldCache.Files)
        }
    }
    catch {
        Write-Status "Existing updater cache could not be read; rebuilding it." Yellow
    }
}

$cachedEntries = @{}
$cacheValid = $false
$policy = [ordered]@{ Files = @($config.ExcludeFiles); Prefixes = @($config.ExcludePrefixes) } | ConvertTo-Json -Compress
if ($oldCache -and $oldCache.Repo -eq "$owner/$repo" -and $oldCache.Branch -eq $branch -and $oldCache.Schema -in @(2, 3)) {
    foreach ($cached in @($oldCache.Entries)) {
        $cachedPath = Normalize-RepoPath ([string]$cached.Path)
        if (!(Is-Excluded $cachedPath)) { $cachedEntries[$cachedPath] = $cached }
    }
    $cacheValid = $oldCache.Schema -eq 3 -and $oldCache.Policy -eq $policy -and $oldCache.Commit -match '^[0-9a-f]{40}$'
}

if (!$cacheValid -and !$VerifyAll -and !$Force -and !(Test-Path -LiteralPath $pendingPath)) {
    throw 'No prepared build manifest found. The build creator must run Prepare-Build.bat and bundle .updater-manifest.json. For an existing installation, run Verify-and-Repair.bat once.'
}

if ($cacheValid -and $oldCache.Commit -eq $commitSha -and !$VerifyAll -and !$Force -and !(Test-Path -LiteralPath $pendingPath)) {
    Write-Status 'Game is up to date. No local file scan required.' Green
    Start-Game
    exit 0
}

if ($cacheValid -and $oldCache.Commit -eq $commitSha) {
    $remoteFiles = $cachedEntries
} else {
    Write-Status "Reading new repository version..." Cyan
    $treeUri = "https://api.github.com/repos/$owner/$repo/git/trees/$commitSha`?recursive=1"
    $tree = Invoke-GitHubJson $treeUri

    if ($tree.truncated -eq $true) {
        Write-Status "GitHub returned a truncated repository tree. The repository is too large for this updater mode." Red
        Write-Status "Use release manifests or split the game content into a smaller update repository." Yellow
        exit 1
    }

    $remoteFiles = @{}
    foreach ($item in $tree.tree) {
        if ($item.type -ne "blob") { continue }

        $path = Normalize-RepoPath ([string]$item.path)
        if (Is-Excluded $path) { continue }

        $remoteFiles[$path] = [PSCustomObject]@{
            Path = $path
            Sha  = [string]$item.sha
            Size = [long]$item.size
            LfsOid = $null
        }
    }

    # LFS pointers are less than 1024 bytes. Inspect small Git blobs regardless of extension.
    Write-Status "Checking repository files for LFS pointers..." Cyan
    $pointerCandidates = New-Object System.Collections.Generic.List[object]
    foreach ($entry in $remoteFiles.Values) {
        if ($cachedEntries.ContainsKey($entry.Path) -and $cachedEntries[$entry.Path].Sha -eq $entry.Sha) {
            $previous = $cachedEntries[$entry.Path]
            $entry.LfsOid = $previous.LfsOid
            $entry.Size = [long]$previous.Size
            continue
        }
        if ($entry.Size -lt 1024) { $pointerCandidates.Add($entry) }
    }
    $pointerTimer = [Diagnostics.Stopwatch]::StartNew()
    $pointerDone = 0
    foreach ($entry in $pointerCandidates) {
        Show-CheckProgress 1 'Checking LFS pointers' $pointerDone $pointerCandidates.Count $pointerTimer $entry.Path
        $encoded = (($entry.Path -split '/') | ForEach-Object { [Uri]::EscapeDataString($_) }) -join '/'
        $response = Get-PointerResponse "https://raw.githubusercontent.com/$owner/$repo/$commitSha/$encoded"
        if ($response.Content -is [byte[]]) {
            $pointer = [Text.Encoding]::UTF8.GetString($response.Content)
        } else { $pointer = [string]$response.Content }
        if ($pointer -match '\Aversion https://git-lfs.github.com/spec/v1\r?\n') {
            if ($pointer -match '(?m)^ext-') { throw "LFS pointer extensions are unsupported: $($entry.Path)" }
            $oidMatch = [regex]::Match($pointer, '(?m)^oid sha256:([0-9a-f]{64})\r?$')
            $sizeMatch = [regex]::Match($pointer, '(?m)^size ([0-9]+)\r?$')
            if (!$oidMatch.Success -or !$sizeMatch.Success) { throw "Invalid LFS pointer: $($entry.Path)" }
            $entry.LfsOid = $oidMatch.Groups[1].Value
            $entry.Size = [long]$sizeMatch.Groups[1].Value
        }
        $pointerDone++
        Show-CheckProgress 1 'Checking LFS pointers' $pointerDone $pointerCandidates.Count $pointerTimer $entry.Path
    }
    Write-Progress -Id 1 -Activity 'Checking LFS pointers' -Completed
    Write-Status "LFS pointer checks complete: $pointerDone files inspected." Green

}

$downloads = New-Object System.Collections.Generic.List[object]
$checkTimer = [Diagnostics.Stopwatch]::StartNew()
$checkedCount = 0
foreach ($entry in $remoteFiles.Values) {
    if ($VerifyAll) {
        Show-CheckProgress 2 'Verifying build contents' $checkedCount $remoteFiles.Count $checkTimer $entry.Path
        $localPath = Join-Path $PSScriptRoot ($entry.Path -replace '/', [IO.Path]::DirectorySeparatorChar)
        $matches = Test-Entry $localPath $entry
        if ($Force -or !$matches) { $downloads.Add($entry) }
    } elseif ($Force -or !$cachedEntries.ContainsKey($entry.Path) -or $cachedEntries[$entry.Path].Sha -ne $entry.Sha) {
        # Portable baseline: trust unchanged installed files, independent of timestamps.
        $downloads.Add($entry)
    }
    $checkedCount++
}
Write-Progress -Id 2 -Activity 'Verifying build contents' -Completed

$removed = New-Object System.Collections.Generic.List[string]
foreach ($old in $oldManaged) {
    $oldPath = Normalize-RepoPath ([string]$old)
    if (!$oldPath -or (Is-Excluded $oldPath)) { continue }

    if (!$remoteFiles.ContainsKey($oldPath)) {
        $removed.Add($oldPath)
    }
}

Write-Status ("Remote files: {0} | Changed/new: {1} | Removed: {2}" -f $remoteFiles.Count, $downloads.Count, $removed.Count) Cyan

if ($downloads.Count -eq 0 -and $removed.Count -eq 0) {
    Write-Status "Game is already up to date." Green
}
else {
    $pendingRecord = @{ Repo = "$owner/$repo"; Branch = $branch; Commit = $commitSha }
    $pendingRecord | ConvertTo-Json | Set-Content -LiteralPath "$pendingPath.tmp" -Encoding UTF8
    Move-Item -LiteralPath "$pendingPath.tmp" -Destination $pendingPath -Force
    $index = 0
    $downloadTimer = [Diagnostics.Stopwatch]::StartNew()

    foreach ($entry in $downloads) {
        Show-CheckProgress 3 'Updating game files' $index $downloads.Count $downloadTimer $entry.Path
        $encodedPathParts = ($entry.Path -split "/") | ForEach-Object { [Uri]::EscapeDataString($_) }
        $encodedPath = $encodedPathParts -join "/"
        $rawUrl = "https://raw.githubusercontent.com/$owner/$repo/$commitSha/$encodedPath"
        $dest = Join-Path $PSScriptRoot ($entry.Path -replace "/", [IO.Path]::DirectorySeparatorChar)

        Write-Status ("Downloading [{0}/{1}] {2}" -f ($index + 1), $downloads.Count, $entry.Path) Yellow
        if ($entry.LfsOid) {
            $action = Get-LfsDownload $entry
            Download-File $action.Uri $dest $entry $action.Headers
        } else {
            Download-File $rawUrl $dest $entry (Get-Headers)
        }
        $index++
    }
    Write-Progress -Id 3 -Activity 'Updating game files' -Completed

    foreach ($path in $removed) {
        $localPath = Join-Path $PSScriptRoot ($path -replace "/", [IO.Path]::DirectorySeparatorChar)
        if (Test-Path -LiteralPath $localPath -PathType Leaf) {
            Write-Status "Removing obsolete file: $path" DarkYellow
            Remove-Item -LiteralPath $localPath -Force
        }
    }

    Write-Status "Update complete." Green
}

    if ($PrepareBuild -and !(Test-Path -LiteralPath (Join-Path $PSScriptRoot (Normalize-RepoPath $gameExe)) -PathType Leaf)) {
        throw "Cannot prepare distribution: game executable is missing: $gameExe"
    }
    $savedEntries = @(
        foreach ($entry in $remoteFiles.Values) {
            [PSCustomObject]@{ Path = $entry.Path; Sha = $entry.Sha; Size = $entry.Size; LfsOid = $entry.LfsOid }
        }
    )
    $newCache = [PSCustomObject]@{
        Schema = 3
        Policy = $policy
        Entries = $savedEntries
        Repo = "$owner/$repo"
        Branch = $branch
        Commit = $commitSha
        UpdatedAt = (Get-Date).ToUniversalTime().ToString("o")
        Files = @($remoteFiles.Keys | Sort-Object)
    }

    $newCache | ConvertTo-Json -Depth 6 | Set-Content -LiteralPath "$cachePath.tmp" -Encoding UTF8
    Move-Item -LiteralPath "$cachePath.tmp" -Destination $cachePath -Force

if (Test-Path -LiteralPath $pendingPath) { Remove-Item -LiteralPath $pendingPath -Force }
if ($PrepareBuild) {
    Write-Status 'Build prepared. Bundle .updater-manifest.json with this EXACT game folder.' Green
}
if ($latestCommit -ne $commitSha) {
    Write-Status 'Interrupted update completed. A newer version exists; run the launcher again to install it.' Yellow
    exit 0
}
Start-Game
