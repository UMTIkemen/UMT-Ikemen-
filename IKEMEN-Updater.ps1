param(
    [switch]$NoLaunch,
    [switch]$Force
)

$ErrorActionPreference = "Stop"
Set-Location -LiteralPath $PSScriptRoot

$configPath = Join-Path $PSScriptRoot "updater-config.json"
$cachePath  = Join-Path $PSScriptRoot ".updater-manifest.json"

if (!(Test-Path -LiteralPath $configPath)) {
    Write-Host "ERROR: updater-config.json was not found." -ForegroundColor Red
    exit 1
}

$config = Get-Content -LiteralPath $configPath -Raw | ConvertFrom-Json

function Write-Status([string]$Text, [ConsoleColor]$Color = [ConsoleColor]::Gray) {
    Write-Host "[Updater] $Text" -ForegroundColor $Color
}

function Normalize-RepoPath([string]$Path) {
    return ($Path -replace "\\", "/").TrimStart("/")
}

function Is-Excluded([string]$RepoPath) {
    $p = Normalize-RepoPath $RepoPath

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
    $bytes = [System.IO.File]::ReadAllBytes($FilePath)
    $header = [System.Text.Encoding]::UTF8.GetBytes("blob $($bytes.Length)`0")

    $all = New-Object byte[] ($header.Length + $bytes.Length)
    [Array]::Copy($header, 0, $all, 0, $header.Length)
    [Array]::Copy($bytes, 0, $all, $header.Length, $bytes.Length)

    $sha1 = [System.Security.Cryptography.SHA1]::Create()
    try {
        return ([BitConverter]::ToString($sha1.ComputeHash($all))).Replace("-", "").ToLowerInvariant()
    }
    finally {
        $sha1.Dispose()
    }
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
    return Invoke-RestMethod -Uri $Uri -Headers (Get-Headers) -Method Get
}

function Download-File([string]$Uri, [string]$Destination) {
    $parent = Split-Path -Parent $Destination
    if ($parent -and !(Test-Path -LiteralPath $parent)) {
        New-Item -ItemType Directory -Force -Path $parent | Out-Null
    }

    $tmp = "$Destination.updater_tmp"
    if (Test-Path -LiteralPath $tmp) {
        Remove-Item -LiteralPath $tmp -Force
    }

    try {
        Invoke-WebRequest -Uri $Uri -Headers (Get-Headers) -OutFile $tmp
        Move-Item -LiteralPath $tmp -Destination $Destination -Force
    }
    catch {
        if (Test-Path -LiteralPath $tmp) {
            Remove-Item -LiteralPath $tmp -Force -ErrorAction SilentlyContinue
        }
        throw
    }
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
    }
}

$oldManaged = @()
if (Test-Path -LiteralPath $cachePath) {
    try {
        $oldCache = Get-Content -LiteralPath $cachePath -Raw | ConvertFrom-Json
        $oldManaged = @($oldCache.Files)
    }
    catch {
        Write-Status "Existing updater cache could not be read; rebuilding it." Yellow
    }
}

$downloads = New-Object System.Collections.Generic.List[object]

foreach ($entry in $remoteFiles.Values) {
    $localPath = Join-Path $PSScriptRoot ($entry.Path -replace "/", [IO.Path]::DirectorySeparatorChar)

    $needsDownload = $Force.IsPresent -or !(Test-Path -LiteralPath $localPath)

    if (!$needsDownload) {
        try {
            $localSha = Get-GitBlobSha1 $localPath
            if ($localSha -ne $entry.Sha) {
                $needsDownload = $true
            }
        }
        catch {
            $needsDownload = $true
        }
    }

    if ($needsDownload) {
        $downloads.Add($entry)
    }
}

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
    $index = 0

    foreach ($entry in $downloads) {
        $index++
        $encodedPathParts = ($entry.Path -split "/") | ForEach-Object { [Uri]::EscapeDataString($_) }
        $encodedPath = $encodedPathParts -join "/"
        $rawUrl = "https://raw.githubusercontent.com/$owner/$repo/$commitSha/$encodedPath"
        $dest = Join-Path $PSScriptRoot ($entry.Path -replace "/", [IO.Path]::DirectorySeparatorChar)

        Write-Status ("Downloading [{0}/{1}] {2}" -f $index, $downloads.Count, $entry.Path) Yellow
        Download-File $rawUrl $dest

        # Verify after download
        $downloadedSha = Get-GitBlobSha1 $dest
        if ($downloadedSha -ne $entry.Sha) {
            throw "Hash verification failed for $($entry.Path)"
        }
    }

    foreach ($path in $removed) {
        $localPath = Join-Path $PSScriptRoot ($path -replace "/", [IO.Path]::DirectorySeparatorChar)
        if (Test-Path -LiteralPath $localPath -PathType Leaf) {
            Write-Status "Removing obsolete file: $path" DarkYellow
            Remove-Item -LiteralPath $localPath -Force
        }
    }

    # Remove empty directories left behind, deepest first.
    Get-ChildItem -LiteralPath $PSScriptRoot -Directory -Recurse -Force |
        Sort-Object { $_.FullName.Length } -Descending |
        ForEach-Object {
            if ($_.FullName -eq $PSScriptRoot) { return }
            try {
                if ((Get-ChildItem -LiteralPath $_.FullName -Force | Measure-Object).Count -eq 0) {
                    Remove-Item -LiteralPath $_.FullName -Force
                }
            } catch {}
        }

    $newCache = [PSCustomObject]@{
        Repo = "$owner/$repo"
        Branch = $branch
        Commit = $commitSha
        UpdatedAt = (Get-Date).ToUniversalTime().ToString("o")
        Files = @($remoteFiles.Keys | Sort-Object)
    }

    $newCache | ConvertTo-Json -Depth 5 | Set-Content -LiteralPath $cachePath -Encoding UTF8
    Write-Status "Update complete." Green
}

if (!$NoLaunch.IsPresent) {
    $exePath = Join-Path $PSScriptRoot $gameExe
    if (!(Test-Path -LiteralPath $exePath -PathType Leaf)) {
        Write-Status "Update finished, but game executable was not found: $gameExe" Red
        exit 1
    }

    Write-Status "Launching $gameExe..." Green
    Start-Process -FilePath $exePath -WorkingDirectory $PSScriptRoot
}
