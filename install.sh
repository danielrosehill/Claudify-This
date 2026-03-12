#!/usr/bin/env bash
# Install claudify-repo as a user-level Claude Code slash command

set -e

DEST="$HOME/.claude/commands"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SRC="$SCRIPT_DIR/claudify-repo.md"

if [ ! -f "$SRC" ]; then
  echo "Error: claudify-repo.md not found in $SCRIPT_DIR"
  exit 1
fi

mkdir -p "$DEST"
cp "$SRC" "$DEST/claudify-repo.md"

echo "Installed to $DEST/claudify-repo.md"
echo "Run /claudify-repo in any Claude Code session to use it."
