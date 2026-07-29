# =====================================================================
# install.ps1  -  Installs Yuri Kruman's authored Claude skills
# Target: Windows PowerShell 5.1+ (also works in PowerShell 7)
# Drops each skill into  %USERPROFILE%\.claude\skills\
# Existing skills of the same name are backed up, never silently lost.
# =====================================================================
$ErrorActionPreference = 'Stop'

$src  = Join-Path $PSScriptRoot 'skills'
$dest = Join-Path $HOME '.claude\skills'

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

Get-ChildItem $src -Directory | ForEach-Object {
    $name   = $_.Name
    $target = Join-Path $dest $name

    if (Test-Path $target) {
        $bakLeaf = "$name.bak-$stamp"
        Rename-Item -Path $target -NewName $bakLeaf
        Write-Host ("  backup : {0}  ->  {1}" -f $name, $bakLeaf) -ForegroundColor Yellow
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
Write-Host "Open a NEW Claude Code session (or run /doctor) so it picks up the skills."
