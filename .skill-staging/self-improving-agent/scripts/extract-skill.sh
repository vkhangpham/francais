#!/bin/bash

set -euo pipefail

SKILL_NAME=""
DRY_RUN=false
OUTPUT_DIR="${CODEX_HOME:-$HOME/.codex}/skills"
SKILL_CREATOR="${CODEX_HOME:-$HOME/.codex}/skills/.system/skill-creator/scripts/init_skill.py"

usage() {
    cat <<EOF
Usage: $(basename "$0") <skill-name> [options]

Scaffold a new Codex skill from a validated learning.

Arguments:
  skill-name       Lowercase skill name with hyphens

Options:
  --dry-run        Print the command without creating files
  --output-dir DIR Write the new skill under DIR
  -h, --help       Show this help message

Examples:
  $(basename "$0") docker-m1-fixes --dry-run
  $(basename "$0") pnpm-setup
EOF
}

title_case() {
    echo "$1" | tr '-' ' ' | awk '{for(i=1;i<=NF;i++){$i=toupper(substr($i,1,1)) tolower(substr($i,2))}}1'
}

while [[ $# -gt 0 ]]; do
    case "$1" in
        --dry-run)
            DRY_RUN=true
            shift
            ;;
        --output-dir)
            OUTPUT_DIR="${2:-}"
            shift 2
            ;;
        -h|--help)
            usage
            exit 0
            ;;
        -*)
            echo "[error] unknown option: $1" >&2
            usage
            exit 1
            ;;
        *)
            if [ -z "$SKILL_NAME" ]; then
                SKILL_NAME="$1"
            else
                echo "[error] unexpected argument: $1" >&2
                usage
                exit 1
            fi
            shift
            ;;
    esac
done

if [ -z "$SKILL_NAME" ]; then
    echo "[error] skill name is required" >&2
    usage
    exit 1
fi

if ! [[ "$SKILL_NAME" =~ ^[a-z0-9]+(-[a-z0-9]+)*$ ]]; then
    echo "[error] use lowercase letters, digits, and hyphens only" >&2
    exit 1
fi

DISPLAY_NAME="$(title_case "$SKILL_NAME")"
SHORT_DESCRIPTION="Help with ${DISPLAY_NAME} workflows"
DEFAULT_PROMPT="Use \$${SKILL_NAME} to apply the extracted workflow to this task."

CMD=(
    python3
    "$SKILL_CREATOR"
    "$SKILL_NAME"
    --path "$OUTPUT_DIR"
    --resources "scripts,references,assets"
    --interface "display_name=$DISPLAY_NAME"
    --interface "short_description=$SHORT_DESCRIPTION"
    --interface "default_prompt=$DEFAULT_PROMPT"
)

if [ "$DRY_RUN" = true ]; then
    printf '%q ' "${CMD[@]}"
    printf '\n'
    exit 0
fi

if [ ! -f "$SKILL_CREATOR" ]; then
    echo "[error] skill creator not found at $SKILL_CREATOR" >&2
    exit 1
fi

"${CMD[@]}"
