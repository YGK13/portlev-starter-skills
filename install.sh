#!/usr/bin/env bash
# =====================================================================
# install.sh  -  Installs Yuri Kruman's authored Claude skills
# Target: macOS / Linux (bash). Drops each skill into ~/.claude/skills/
# Existing skills of the same name are backed up to ~/.claude/skills-backup/
# (outside the skills folder, so backups never load as duplicate skills).
# =====================================================================
set -euo pipefail

SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/skills"
DEST="${HOME}/.claude/skills"
BACKUP="${HOME}/.claude/skills-backup"

if [ ! -d "$SRC" ]; then
  echo "ERROR: no 'skills' folder next to this script. Run it from inside the unzipped package." >&2
  exit 1
fi
mkdir -p "$DEST"

STAMP="$(date +%Y%m%d-%H%M%S)"
installed=0
backedup=0

echo ""
echo "Installing skills into $DEST"
echo "----------------------------------------------------------"

# Older versions of this installer left "<name>.bak-<stamp>" folders inside
# the skills directory, where they load as duplicate skills. Move them out.
for old in "$DEST"/*.bak-*; do
  [ -d "$old" ] || continue
  mkdir -p "$BACKUP"
  mv "$old" "$BACKUP/"
  echo "  moved  : $(basename "$old")  ->  $BACKUP/"
done

for d in "$SRC"/*/; do
  name="$(basename "$d")"
  target="$DEST/$name"

  if [ -e "$target" ]; then
    mkdir -p "$BACKUP"
    bak="$BACKUP/$name-$STAMP"
    [ -e "$bak" ] && bak="$bak-$$"
    mv "$target" "$bak"
    echo "  backup : $name  ->  $bak"
    backedup=$((backedup+1))
  fi

  cp -R "$d" "$target"

  if [ -f "$target/SKILL.md" ]; then
    echo "  ok     : $name"
    installed=$((installed+1))
  else
    echo "  WARN   : $name installed but no SKILL.md found"
  fi
done

echo "----------------------------------------------------------"
echo "Done. $installed skill(s) installed, $backedup existing backed up."
echo "Restart Claude Code (open a new session) so it picks up the skills."
