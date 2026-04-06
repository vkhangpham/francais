---
name: tcf-mix-session
description: Run a mixed TCF session for this repo. Use when the selected module is MIX and the session should combine SL, VOC, CE, and/or CO in a timed, QCM-heavy format while still respecting the repo's adaptive warm-up and source-first workflow.
---

# TCF MIX Session

Use this skill for module `MIX` in this workspace.

The purpose of MIX is exam conditioning and transfer, not chaos. A mixed session should combine modules in a deliberate sequence with clear timing and fast correction.
Assume `tcf-core-workflow` has already been applied unless you explicitly need to recover the shared base rules.

## Trigger

Use when:
- Kyle starts `/learn-fr` and chooses `MIX`
- the goal is endurance, transfer, or timed adaptation across modules
- recent data suggests combining grammar, vocabulary, and comprehension is more useful than another pure module block

## Mandatory pre-read

Before assembling the mixed block:
1. Read `GUIDE_EXERCICES_FAIBLESSES.md`
2. Read `06_vocabulaire/vocabulaire_master.json`
3. Read `05_grammaire_supplementaire/erreurs_en_cours.json`
4. Read `PROGRESSION_GLOBALE.md`
5. Read `data/progression_master.json`
6. Read the most recent relevant sessions across the modules you plan to combine
7. Identify the exact source set in `~/Study/books` or `~/Study/Francais/tcf`
8. If present, review `.learnings/*`
9. Check `./tools/bd-local ready --plain`

## Shared workflow dependency

Use this skill after:
- `tcf-core-workflow`
- `tcf-phase1-warmup`
- `tcf-source-selection`

Hand off to `tcf-session-closure` when the session ends.

## Design principle

MIX should feel like structured cross-training.
Use at most `2-4` module slices in one session.
Prefer `2-3` slices by default unless the explicit goal is a more exam-like mini mock.
Every slice must have a clear purpose.

## Recommended shapes

### Shape A: SL + VOC + CE
- short grammar warm-up
- targeted vocabulary lesson or reactivation
- one reading mini-set using overlapping vocabulary

### Shape B: SL + VOC + CO
- short grammar repair
- oral-theme vocabulary prep
- one listening mini-set

### Shape C: Timed mini mock
- `10-12` SL questions
- `8-10` VOC questions
- `1` short CE or CO block
- immediate correction after each slice or at the end, depending on fatigue and goal

## Assembly rules

- Start with the highest-value weakness from current data.
- Reuse vocabulary across slices whenever possible.
- Avoid random unrelated themes.
- Keep the whole session terminal-friendly and correction-friendly.
- Prefer QCM and short closed prompts.

## Timing guidance

For a `60-120 min` mixed session:
- `15-25 min` Phase 1 adaptive warm-up
- `30-60 min` mixed core blocks
- `15-30 min` correction and updates

Keep each core slice compact enough that correction still happens while the material is fresh.

## Correction method

For each slice:
- score it separately
- correct every error immediately or in a short grouped review
- identify whether the miss was grammar, lexical nuance, reading/listening inference, or attention

Use slice-by-slice diagnosis to decide what goes back into the next warm-up.

## Phase 3 updates

Update only the files justified by what happened:
- `06_vocabulaire/vocabulaire_master.json`
- `05_grammaire_supplementaire/erreurs_en_cours.json`
- `data/progression_master.json`
- `PROGRESSION_GLOBALE.md`
- `sessions/YYYY-MM-DD_tcf_mix.md`

Document the module composition clearly in the session journal.
For each slice, record:
- module
- exact source
- exact page/audio/document window
- timing
- short diagnosis

Also:
- review the session thread and fold important clarifications back into the journal
- log durable workflow lessons with `self-improving-agent` when warranted
- update Beads only for real follow-up work

## Pitfalls

Avoid:
- cramming all four modules into one overloaded session by default
- mixing unrelated themes just to appear comprehensive
- skipping correction because the session is broad
- losing the source trail for each slice
- turning MIX into a pile of disconnected leftovers

## Success criteria

A strong MIX session produces:
- useful pressure across multiple TCF skills
- clear per-slice diagnosis
- coherent theme or weakness linkage across slices
- a better sense of transfer and endurance without sacrificing correction quality
