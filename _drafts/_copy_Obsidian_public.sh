#!/usr/bin/env bash

set -euo pipefail

SOURCE_DIR="/Users/uki/Obsidian"
DEST_DIR="/Users/uki/REPOS/AIKO/UkiDLucas.github.io/_drafts"

mkdir -p "$DEST_DIR"

# Find regular files whose first line contains "#public", then copy to _drafts.
find "$SOURCE_DIR" -type f -print0 |
while IFS= read -r -d '' file; do
  if awk 'NR==1 && /#public/ { found=1 } END { exit found ? 0 : 1 }' "$file"; then
    cp -f "$file" "$DEST_DIR/"
    printf 'Copied: %s\n' "$file"
  fi
done

echo "Done."
