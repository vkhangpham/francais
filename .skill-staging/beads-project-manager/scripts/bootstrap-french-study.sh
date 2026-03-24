#!/bin/bash

set -euo pipefail

PORT_PREFIX="${BEADS_PREFIX:-fr}"

title_exists() {
    local title="$1"
    local json
    json="$(bd list --json --all --title "$title" 2>/dev/null || echo "[]")"
    /usr/bin/python3 -c '
import json
import sys

data = json.load(sys.stdin)
items = data if isinstance(data, list) else data.get("issues", [])
title = sys.argv[1]
for item in items:
    if item.get("title") == title:
        print(item.get("id", ""))
        raise SystemExit(0)
raise SystemExit(1)
' "$title" <<<"$json"
}

ensure_issue() {
    local title="$1"
    shift
    local existing
    if existing="$(title_exists "$title")"; then
        echo "$existing"
        return 0
    fi
    bd create "$title" "$@" --json | /usr/bin/python3 -c '
import json
import sys

data = json.load(sys.stdin)
if isinstance(data, dict):
    print(data.get("id", ""))
else:
    print("")
'
}

if [ ! -d .beads ]; then
    bd init --stealth --skip-agents --skip-hooks -p "$PORT_PREFIX"
fi

root_id="$(ensure_issue "TCF Mastery and Study System" -t epic -p 1 --labels domain/french,area/system --description "Top-level epic for tracking study goals, weaknesses, and next ready work for TCF preparation.")"
sl_id="$(ensure_issue "Structure de langue improvement loop" -t epic -p 1 --parent "$root_id" --labels module/sl,source/tcf --description "Track grammar and structure drills, weaknesses, and remediation tasks.")"
voc_id="$(ensure_issue "Vocabulaire retention loop" -t epic -p 1 --parent "$root_id" --labels module/voc,source/tcf --description "Track weak vocabulary sets, collocations, and review cycles.")"
ce_id="$(ensure_issue "Comprehension ecrite practice loop" -t epic -p 2 --parent "$root_id" --labels module/ce,source/tcf --description "Track reading-comprehension drills, sources, and review tasks.")"
co_id="$(ensure_issue "Comprehension orale practice loop" -t epic -p 2 --parent "$root_id" --labels module/co,source/tcf --description "Track listening-comprehension drills, sources, and review tasks.")"
review_id="$(ensure_issue "Weakness and review tracking" -t epic -p 1 --parent "$root_id" --labels area/review,area/system --description "Convert recurring mistakes and learnings into scheduled follow-up work.")"

ensure_issue "Backfill recurring grammar weaknesses from erreurs_en_cours.json" -t task -p 1 --parent "$review_id" --labels module/sl,area/review --description "Review erreurs_en_cours.json and create focused remediation tasks for the highest-frequency grammar mistakes." >/dev/null
ensure_issue "Backfill weak vocabulary from vocabulaire_master.json" -t task -p 1 --parent "$review_id" --labels module/voc,area/review --description "Extract weak and recent vocabulary that needs spaced review or targeted drilling." >/dev/null
ensure_issue "Run next MIX session and log score breakdown" -t task -p 2 --parent "$root_id" --labels source/tcf,area/system --description "Complete the next mixed TCF session and record score breakdown plus follow-up tasks." >/dev/null

echo "[ok] Beads study backlog is ready"
echo "[ok] Root epic: $root_id"
echo "[ok] Module epics: $sl_id $voc_id $ce_id $co_id $review_id"
