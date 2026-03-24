#!/bin/bash

set -euo pipefail

OUTPUT="${CLAUDE_TOOL_OUTPUT:-${CODEX_TOOL_OUTPUT:-${TOOL_OUTPUT:-}}}"

if [ -z "$OUTPUT" ]; then
    exit 0
fi

ERROR_PATTERNS=(
    "error:"
    "Error:"
    "ERROR:"
    "failed"
    "FAILED"
    "command not found"
    "No such file"
    "Permission denied"
    "fatal:"
    "Exception"
    "Traceback"
    "ModuleNotFoundError"
    "SyntaxError"
    "TypeError"
    "non-zero"
)

contains_error=false
for pattern in "${ERROR_PATTERNS[@]}"; do
    if [[ "$OUTPUT" == *"$pattern"* ]]; then
        contains_error=true
        break
    fi
done

if [ "$contains_error" = true ]; then
    cat <<'EOF'
<error-detected>
A tool failure was detected. If the cause or fix would help future sessions, log it in .learnings/ERRORS.md.
</error-detected>
EOF
fi
