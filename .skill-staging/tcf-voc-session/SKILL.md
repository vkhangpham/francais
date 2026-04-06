---
name: tcf-voc-session
description: Run a TCF vocabulary session for this repo. Use when the selected module is VOC and the session must stay lesson-first, source-grounded, QCM-centered, and synchronized with vocabulaire_master.json, erreurs_en_cours.json, recent sessions, and the TCF resource hierarchy.
---

# TCF VOC Session

Use this skill for module `VOC` in this workspace.

The goal is not to improvise random vocabulary drills. The goal is to build a strong, reusable lesson from real TCF-aligned sources, then verify it with closed exercises.
Assume `tcf-core-workflow` has already been applied unless you explicitly need to recover the shared base rules.

## Trigger

Use when:
- Kyle starts `/learn-fr` and chooses `VOC`
- a session needs theme-based vocabulary expansion for TCF
- a vocab lesson must be built from books or TCF materials, not invented from scratch
- the repo data must be updated after vocabulary acquisition

## Mandatory pre-read

Before drafting anything:
1. Read `GUIDE_EXERCICES_FAIBLESSES.md`
2. Read `06_vocabulaire/vocabulaire_master.json`
3. Read `05_grammaire_supplementaire/erreurs_en_cours.json`
4. Read `PROGRESSION_GLOBALE.md`
5. Read `data/progression_master.json`
6. Read the most recent relevant `sessions/*_tcf_voc.md`
7. Identify the exact source in `~/Study/books` or `~/Study/Francais/tcf`
8. If present, review `.learnings/LEARNINGS.md`, `.learnings/ERRORS.md`, `.learnings/FEATURE_REQUESTS.md`
9. Check `./tools/bd-local ready --plain` before choosing the next important study work

Do not start a VOC session without these checks.

## Shared workflow dependency

Use this skill after:
- `tcf-core-workflow`
- `tcf-phase1-warmup`
- `tcf-source-selection`

Hand off to `tcf-session-closure` when the session ends.

## Output contract

A good VOC session contains:
- Phase 1 warm-up adapted from recent errors and fragile vocabulary
- Phase 2 real lesson built from one exact source and one coherent theme
- Phase 2 verification exercises only after the lesson is good enough
- immediate correction for all learner mistakes
- Phase 3 updates only if the session created durable gains or stable errors

Recommended saved structure:
- source line
- lexical field
- curated target words with contrasts/examples
- integrated reading
- QA note
- exercise block
- correction block

## Phase 1: adaptive warm-up

Build a short warm-up from fresh repo data.

1. Start from the latest relevant session, not from stale defaults.
2. Classify candidate review points as:
   - `active`
   - `spot-check`
   - `retired`
3. Include:
   - `1` short structure block from active grammar errors if still relevant
   - `1` short vocab reactivation block from fragile recent words
   - `1` short recent-errors block only for items that are still unstable
4. Do not recycle stabilized points as full drills.

Preferred formats:
- synonym / antonym
- meaning in context
- register choice
- collocation choice
- short gap-fill
- QCM only by default

## Phase 2: build the lesson first

This is the core of the skill.

### 1. Choose one exact source

Prioritize:
1. `~/Study/books/vocabulaire progressive b2/`
2. other TCF vocabulary books in `~/Study/Francais/tcf`
3. only then carefully adapted material

Record the exact chapter and page span.

### 2. Choose one coherent lexical field

Good examples:
- économie et commerce
- médias et presse
- environnement
- santé publique
- éducation
- travail et emploi

Avoid theme-hopping inside one lesson.

### 3. Curate target words deliberately

Select roughly `12-20` high-value items.
Prefer words that are:
- frequent in TCF reading and QCM
- weak or recent in `vocabulaire_master.json`
- useful for contrasts and distractor elimination
- reusable across CE, CO, and VOC

For each target item, explain:
- plain-language meaning
- what real-world thing it refers to if the referent is unclear
- one or more contrasts with nearby words
- register if relevant
- one or two clean examples
- common trap if useful

If Kyle does not understand the real-world referent, explain the thing first, then give the French label and English gloss if helpful.

### 4. End the lesson with integrated reading

Finish with one or more short paragraphs that naturally reuse many target words together.
This reading acts as consolidation before exercises.

### 5. QA before exercises

Before writing any exercise, check that:
- every question is self-contained
- no sentence has a missing referent Kyle must guess
- no option depends on private context from the lesson wording
- the lesson already teaches enough to justify the test

## Phase 2: exercise block after the lesson

Only after lesson QA passes, create closed exercises.

Recommended sequence:
1. `8-12` QCM on meaning / nuance / register / collocation
2. `4-8` short gap-fills or transformations
3. `1` short recycling paragraph or grouped mini-set

Rules:
- keep QCM first
- distractors must be plausible
- do not create fake difficulty through ambiguity
- keep all prompts self-sufficient
- no long production

## Correction style

Correct every mistake with this shape:
- `❌ erreur -> ✅ correction`
- explanation in `1-2` sentences max

Also note:
- which words remain fragile
- which distinctions are now stable enough for retirement or spot-check only

## Phase 3: repo updates

Update only if the session produced real durable signal.

Potential updates:
- `06_vocabulaire/vocabulaire_master.json`
- `05_grammaire_supplementaire/erreurs_en_cours.json`
- `data/progression_master.json`
- `PROGRESSION_GLOBALE.md`
- `sessions/YYYY-MM-DD_tcf_voc.md`

Also:
- integrate useful clarifications from chat back into the lesson or session journal
- review the full session before closing
- use the local self-improvement workflow for durable corrections
- update Beads if the session creates a real follow-up task
- commit useful session changes with a focused message

## Pitfalls

Avoid:
- starting with exercises before the lesson is rich enough
- dumping long word lists without contrasts or examples
- reusing the same warm-up automatically every session
- generating exercises with implicit context
- updating tracking files when the evidence is too weak

## Success criteria

A strong VOC session leaves behind:
- a reusable lesson worth rereading
- a small set of well-chosen target words with clear contrasts
- exercises that verify understanding instead of replacing teaching
- refreshed repo tracking data only where justified
