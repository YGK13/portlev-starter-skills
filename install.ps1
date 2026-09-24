# =====================================================================
# install.ps1  -  Installs Yuri Kruman's authored Claude skills
# Target: Windows PowerShell 5.1+ (also works in PowerShell 7)
# Drops each skill into  %USERPROFILE%\.claude\skills\
# Existing skills of the same name are backed up to %USERPROFILE%\.claude\skills-backup\
# (outside the skills folder, so backups never load as duplicate skills).
# =====================================================================
$ErrorActionPreference = 'Stop'

$src  = Join-Path $PSScriptRoot 'skills'
$dest = Join-Path $HOME '.claude\skills'
$backup = Join-Path $HOME '.claude\skills-backup'

if (-not (Test-Path $src)) {
    Write-Host "ERROR: no 'skills' folder next to this script. Run it from inside the unzipped package." -ForegroundColor Red
    exit 1
}
if (-not (Test-Path $dest)) {
    New-Item -ItemType Directory -Force -Path $dest | Out-Null
    Write-Host "Created $dest"
}

$stamp     = Get-Date -Format 'yyyyMMdd-HHmmss'
$installed = 0
$backedUp  = 0

Write-Host ""
Write-Host "Installing skills into $dest" -ForegroundColor Cyan
Write-Host "----------------------------------------------------------"

# Older versions of this installer left "<name>.bak-<stamp>" folders inside
# the skills directory, where they load as duplicate skills. Move them out.
Get-ChildItem $dest -Directory -Filter '*.bak-*' | ForEach-Object {
    if (-not (Test-Path $backup)) { New-Item -ItemType Directory -Force -Path $backup | Out-Null }
    Move-Item -Path $_.FullName -Destination (Join-Path $backup $_.Name)
    Write-Host ("  moved  : {0}  ->  {1}" -f $_.Name, $backup) -ForegroundColor Yellow
}

Get-ChildItem $src -Directory | ForEach-Object {
    $name   = $_.Name
    $target = Join-Path $dest $name

    if (Test-Path $target) {
        if (-not (Test-Path $backup)) { New-Item -ItemType Directory -Force -Path $backup | Out-Null }
        $bakPath = Join-Path $backup "$name-$stamp"
        if (Test-Path $bakPath) { $bakPath = "$bakPath-$PID" }
        Move-Item -Path $target -Destination $bakPath
        Write-Host ("  backup : {0}  ->  {1}" -f $name, $bakPath) -ForegroundColor Yellow
        $backedUp++
    }

    Copy-Item -Path $_.FullName -Destination $target -Recurse -Force

    if (Test-Path (Join-Path $target 'SKILL.md')) {
        Write-Host ("  ok     : {0}" -f $name) -ForegroundColor Green
        $installed++
    } else {
        Write-Host ("  WARN   : {0} installed but no SKILL.md found" -f $name) -ForegroundColor Red
    }
}

Write-Host "----------------------------------------------------------"
Write-Host ("Done. {0} skill(s) installed, {1} existing backed up." -f $installed, $backedUp) -ForegroundColor Cyan
Write-Host "Restart Claude Code (open a new session) so it picks up the skills."
