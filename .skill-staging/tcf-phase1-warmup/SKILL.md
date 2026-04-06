---
name: tcf-phase1-warmup
description: Build the adaptive Phase 1 warm-up for this TCF repo. Use before any substantial session when Phase 1 must be based on fresh repo data, recent relevant sessions, and active-vs-spot-check-vs-retired weakness triage instead of mechanical repetition.
---

# TCF Phase 1 Warm-up

Use this skill before building the main content of a `SL`, `VOC`, `CE`, `CO`, or `MIX` session.
Use it as a component under `tcf-core-workflow`, not as a free-floating substitute for the full session workflow.

The purpose of Phase 1 is not to repeat the same old reminders. It is to reactivate only the right weak points, at the right intensity, from fresh evidence.

## Trigger

Use when:
- starting any important TCF session in this repo
- building the warm-up block for `/learn-fr`
- deciding what should stay active, become a spot-check, or be retired from default repetition

## Mandatory inputs

Before writing the warm-up, read:
1. `GUIDE_EXERCICES_FAIBLESSES.md`
2. `06_vocabulaire/vocabulaire_master.json`
3. `05_grammaire_supplementaire/erreurs_en_cours.json`
4. `data/progression_master.json`
5. `PROGRESSION_GLOBALE.md`
6. the latest relevant session journal in `sessions/`
7. if needed, the previous `1-2` relevant session journals for trend confirmation
8. if present, `.learnings/*`

Do not build Phase 1 from memory alone.

## Output contract

A Phase 1 block should contain:
- `1` structure de langue sub-block
- `1` vocabulaire cible sub-block
- `1` recent-errors or recent-contrast sub-block

It should stay short, sharp, and evidence-driven.

Default learner-facing format:
- French for the actual warm-up items and corrections
- QCM first when possible
- correction-ready items that can later use `❌ erreur -> ✅ correction`
- terminal-friendly numbering

## Classification model

Every candidate review point must be classified as one of:
- `active`: still weak, recently missed, or unstable
- `spot-check`: recently improved, but not fully trusted yet
- `retired`: stabilized enough to remove from default warm-up

### Promote to active when
- the error is still marked active in `erreurs_en_cours.json`
- the last relevant session showed hesitation or a wrong answer
- the point keeps reappearing across modules
- the point is central to current module work

### Keep as spot-check when
- the point was recently repaired cleanly
- the repo notes say it should remain under brief watch
- one more confirmation would justify retirement

### Retire when
- recent relevant sessions show stable success
- the tracking files explicitly describe it as resolved or no longer default-worthy
- there is no new sign of relapse

## Construction algorithm

1. Start with the latest relevant session.
2. Pull out the last session's mistakes, hesitations, and newly learned contrasts.
3. Cross-check them against:
   - `erreurs_en_cours.json`
   - `vocabulaire_master.json`
   - `data/progression_master.json`
4. Decide what is `active`, `spot-check`, and `retired`.
5. Build the three warm-up sub-blocks.
6. Keep the total load light enough that Phase 2 still gets the best energy.
7. Preserve a short triage note in the session journal or warm-up notes so future sessions know what stayed `active`, what became `spot-check`, and what was effectively `retired`.

## Recommended shape

### 1. Structure de langue
- usually `4-8` items
- mostly QCM
- prioritize active grammar issues
- reserve spot-check grammar points to `1-2` items max

### 2. Vocabulaire cible
- usually `4-8` items
- use recent fragile words, not random old ones
- favor contrasts, collocations, register, and meaning in context

### 3. Recent errors / recent contrasts
- usually `2-5` items
- use this to test a tiny set of still-relevant distinctions from the last session
- especially useful when a point improved but is too young to retire

## Module-specific biasing

Adjust the warm-up based on the day's module:
- `SL`: heavier grammar signal
- `VOC`: lighter grammar, richer lexical reactivation
- `CE`: vocabulary and reading-relevant contrasts
- `CO`: oral markers, listening-relevant vocabulary, minimal grammar
- `MIX`: one concise block from each high-value area without overloading

## Quality rules

- Do not mechanically replay the same warm-up across sessions.
- Do not turn stabilized points back into full drills without evidence.
- Do not flood Phase 1 with too many items.
- Every item should test a precise contrast.
- Keep the format terminal-friendly and correction-friendly.

## Good sources for warm-up content

- direct carryover from the latest session's weak points
- fragile entries in `vocabulaire_master.json`
- active entries in `erreurs_en_cours.json`
- the next-session guidance in `data/progression_master.json`
- a small number of source-backed items from current books if needed

## Example decisions

- `si + temps` improved once after a relapse -> `spot-check`
- `ce que / ce qui / dont` validated once but still young -> `spot-check`
- `imparfait vs passé composé` resolved and quiet -> `retired`
- new confusion from yesterday's CE or VOC session -> `active`

## Pitfalls

Avoid:
- copying the previous warm-up with cosmetic changes
- bringing back old trophy errors just because they used to matter
- forgetting to read the last relevant session first
- making Phase 1 longer than the main lesson needs

## Success criteria

A strong Phase 1 warm-up should:
- feel different when the evidence changed
- focus attention on today’s real weak points
- preserve momentum for Phase 2
- leave a clearer signal about what remains active versus nearly retired
