# Maintenance Pass - 2026-04-06

## Scope

First true global maintenance pass after the initial Phase 4 backfill.
Reviewed against:
- `fr/` canonical pages
- `sessions/2026-03-25_tcf_voc.md`
- `sessions/2026-03-26_tcf_voc.md`
- `sessions/2026-03-31_tcf_voc.md`
- `05_grammaire_supplementaire/erreurs_en_cours.json`
- `06_vocabulaire/vocabulaire_master.json`
- `data/progression_master.json`

## Findings

### 1. Initial canonical pages are aligned with current trackers
- The grammar pages for `ce que / ce qui / dont` and `si + plus-que-parfait / conditionnel passé` match the current active-spot-check status in the tracker files.
- The milestones page matches the current tracked cycle summary and next-session direction.
- The environment theme page is consistent with the 2026-03-31 session outcome and progression notes.

### 2. Repeated media contrasts still lacked canonical pages
Before this pass, several recurrent media contrasts were still only present in session notes and vocabulary JSON:
- `émission / programme`
- `numéro / rubrique`
- `en direct / en différé`

These were explicitly marked for review in the 2026-03-26 and 2026-03-31 sessions, so they qualify as canonical vocabulary contrasts.

### 3. Coverage remains thin in `CE` and `CO`
- `CE` and `CO` page families still exist mostly as scaffolds.
- The question-pattern page exists, but there are not yet dedicated `CE` reading-trap pages or `CO` listening-trap pages.

### 4. Raw provenance capture has not started yet
- `fr/raw/` still has no concrete captured source notes.
- Future important chat clarifications or extracted question sets should begin populating it.

### 5. Minor documentation inconsistency repaired during this pass
- the global index previously still implied that canonical backfill had not happened
- this should now reflect that backfill has begun

## Actions taken in this maintenance pass
- created canonical vocabulary contrast pages for the repeated media contrasts listed above
- updated the global index and log
- refreshed lint notes to reflect the new current state

## Next priorities

### High priority
- create the first dedicated `CE` canonical pages
- create the first dedicated `CO` canonical pages
- begin capturing raw provenance under `fr/raw/` for important clarifications or source extracts

### Medium priority
- expand question-bank coverage beyond the starter distractor page
- decide how tightly to integrate the separate `po/` tree into `fr/po/`

### Low priority
- backfill older archived material only after current-cycle canonical coverage is stronger
