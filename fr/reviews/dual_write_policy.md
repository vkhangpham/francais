# Dual-Write Policy

Phase 3 rule: every important French-learning session should now write to both the event layer and the compiled wiki layer.

## Why

The session journal and JSON trackers preserve chronology, scores, and machine-readable state.
The global `fr/` wiki preserves durable understanding.

Without dual-write, knowledge keeps getting rediscovered from logs.
With dual-write, the workspace compounds.

## Minimum dual-write output for an important session

1. Event record
- keep or update the normal event-style session artifact
- usually `sessions/YYYY-MM-DD_tcf_[module].md`
- for some PO work, keep the existing raw/wiki pattern as appropriate

2. Tracker updates when justified
- update `06_vocabulaire/vocabulaire_master.json` if new durable vocabulary was actually learned
- update `05_grammaire_supplementaire/erreurs_en_cours.json` if a real stable pattern appeared or changed status
- update `data/progression_master.json` if session-level progress metadata changed

3. Canonical wiki update under `fr/`
- update at least one canonical page when the session produced reusable understanding
- examples:
  - `fr/vocabulary/...` for lexical contrasts, themes, or phrase banks
  - `fr/grammar/...` for rule pages or error-pattern pages
  - `fr/ce/...` for reading traps or source digests
  - `fr/co/...` for listening traps or transcript-derived patterns
  - `fr/po/...` for speaking frameworks or scenarios linked into the global system
  - `fr/questions/...` for distractor families or reusable drill archetypes
  - `fr/sessions/...` for cross-session milestone syntheses

4. Global log update
- append `fr/log.md` when the wiki gained meaningful new compiled knowledge

## What counts as important enough to dual-write
- a new stable contrast, rule, or trap pattern
- a clarification that will likely matter again
- a repeated confusion cluster
- a high-value session whose learning should influence future warm-ups or lesson design
- a successful synthesis that saves future rediscovery

## Cases where tracker-only is not enough
Tracker-only is not enough when the new learning includes:
- an explanation
- a contrast
- a reusable example set
- a question pattern
- a strategy note
- a chat clarification worth preserving

Those belong in canonical markdown pages, not only in JSON notes.

## Canonical question after every session
Ask:
What durable understanding from this session should become or update a canonical page under `fr/`?
