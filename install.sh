#!/usr/bin/env bash
# =====================================================================
# install.sh  -  Installs Yuri Kruman's authored Claude skills
# Target: macOS / Linux (bash). Drops each skill into ~/.claude/skills/
# Existing skills of the same name are backed up, never silently lost.
# =====================================================================
set -euo pipefail

SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/skills"
DEST="${HOME}/.claude/skills"

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

for d in "$SRC"/*/; do
  name="$(basename "$d")"
  target="$DEST/$name"

  if [ -e "$target" ]; then
    mv "$target" "$target.bak-$STAMP"
    echo "  backup : $name  ->  $name.bak-$STAMP"
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
echo "Open a NEW Claude Code session (or run /doctor) so it picks up the skills."
