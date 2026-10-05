UMT IKEMEN - PORTABLE BUILD MANIFEST UPDATER
==========================================

FOR THE BUILD CREATOR
1. Close IKEMEN and any older updater. Extract this package into the EXACT
   game folder you plan to distribute, replacing the old updater files.
   Your configured UMTIkemen/UMT-Ikemen- main repo is already set.
2. Run Prepare-Build.bat. It verifies the full managed build against a pinned
   GitHub commit and repairs mismatches. This one-time operation can be slow.
   Existing version-2 caches can supply LFS metadata, saving pointer requests.
3. Wait for successful completion and the "Build prepared" message. If it
   says a newer version exists after recovering an interrupted update, run
   Prepare-Build.bat again before packaging.
4. Bundle .updater-manifest.json alongside your game, IKEMEN-Updater.ps1,
   updater-config.json, Update-and-Play.bat, and Verify-and-Repair.bat.
   Do not bundle .updater-pending.json or any .tmp/.updater_tmp files.
   Prepare-Build.bat and this README are optional for players.
5. Test a freshly extracted copy with Update-and-Play.bat. When GitHub has
   not changed it should report "No local file scan required" and launch.
   Changing extraction timestamps does not invalidate this manifest.

FOR PLAYERS
Use Update-and-Play.bat. A normal up-to-date launch checks the GitHub commit
and reads the small bundled manifest, without hashing/scanning game assets.
When GitHub changes, it compares Git blob IDs with the installed manifest,
reuses unchanged LFS metadata, and downloads only added/changed whole files.
Downloads are checked by size and SHA-1 (ordinary Git) or SHA-256 (LFS)
before replacing local files. Removed previously managed files are deleted.
Saves/replays/screenshots and your configured exclusions remain protected.
Git and Git LFS do not need to be installed on players' PCs.

VERIFY AND REPAIR
Run Verify-and-Repair.bat with the game closed if files are missing, damaged,
or manually modified. It hashes all managed files, repairs differences,
and writes a fresh manifest. It does not launch the game.
Normal launches trust the installed version and do not detect arbitrary
local edits or deletions. The launcher does check that the game EXE exists.
Verification repairs the build to the selected repository version, so it
can replace local mods that are not excluded.

EXISTING INSTALLATIONS
An old schema-2 cache alone cannot enable the portable fast path. Run
Prepare-Build.bat on the creator's distribution copy or Verify-and-Repair.bat
once on a player's existing installation. Do not copy a manifest from a
newer/different build onto an old one: that can falsely mark it up to date.
Keep the schema-3 .updater-manifest.json after preparation and updates.

INTERRUPTED UPDATES
A pending record pins the unfinished commit. Retry the normal launcher to
finish that version. It may redownload changed files from that update.
If GitHub moved ahead, run the launcher again for the newer version.
The installed manifest advances only after downloads and removals succeed.
Do not delete the pending record or launch during a failed update.

RELEASE WORKFLOW
For incremental updates, commit/push game changes and LFS objects as usual.
Players update their manifests automatically; you do not need to publish a
fresh full-build download each time. For every new full-build archive, run
Prepare-Build.bat on that distribution copy first and include its manifest.
Launcher files/manifests are automatically excluded from game self-updates.
Do not ship credentials, a personal GITHUB_TOKEN, or unfinished-update files.
Optional GITHUB_TOKEN is read only from the process environment.

PROGRESS
Pointer discovery, full verification, and update downloads show per-stage
file counts/percentage and average-based ETA. Estimates can fluctuate.
During a large single-file download or hash the file counter will hold
until that file completes. Preparation can still be lengthy; normal players
with a prepared build avoid that initial scan.

REQUIREMENTS AND VALIDATION
Windows PowerShell 5.1; access to GitHub and available LFS bandwidth.
Default launch stops on network/update errors rather than starting a build
with an uncertain update status. The script refuses truncated GitHub trees.
No Windows PowerShell runtime/live repository execution was available during
preparation. State-transition fixtures, script structure, original config,
and archive integrity were checked. Test a spare build before distributing.
