#!/bin/bash

set -euo pipefail

TARGET_ROOT="${1:-.}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ASSET_DIR="$(cd "$SCRIPT_DIR/../assets" && pwd)"
TARGET_ROOT="$(cd "$TARGET_ROOT" && pwd)"
LEARNINGS_DIR="$TARGET_ROOT/.learnings"

mkdir -p "$LEARNINGS_DIR"

copy_if_missing() {
    local source_file="$1"
    local target_file="$2"

    if [ -e "$target_file" ]; then
        echo "[skip] $target_file already exists"
        return 0
    fi

    cp "$source_file" "$target_file"
    echo "[ok] created $target_file"
}

copy_if_missing "$ASSET_DIR/LEARNINGS.md" "$LEARNINGS_DIR/LEARNINGS.md"
copy_if_missing "$ASSET_DIR/ERRORS.md" "$LEARNINGS_DIR/ERRORS.md"
copy_if_missing "$ASSET_DIR/FEATURE_REQUESTS.md" "$LEARNINGS_DIR/FEATURE_REQUESTS.md"

echo "[ok] learning files ready in $LEARNINGS_DIR"
