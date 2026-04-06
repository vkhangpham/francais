---
name: tcf-sl-session
description: Run a TCF structure de langue session for this repo. Use when the selected module is SL and the session must target real grammar weaknesses with QCM-heavy drills sourced from the repo data and prioritized TCF/grammar books.
---

# TCF SL Session

Use this skill for module `SL` in this workspace.

The main objective is fast, high-signal grammar work for TCF-style multiple choice. This module is about precision, pattern repair, and distractor elimination.
Assume `tcf-core-workflow` has already been applied unless you explicitly need to recover the shared base rules.

## Trigger

Use when:
- Kyle starts `/learn-fr` and chooses `SL`
- the next ready work is grammar-heavy reinforcement
- recent sessions show unstable patterns such as `si + temps`, relatives, pronouns, prepositions, articles, or subjonctif/indicatif

## Mandatory pre-read

Before writing drills:
1. Read `GUIDE_EXERCICES_FAIBLESSES.md`
2. Read `05_grammaire_supplementaire/erreurs_en_cours.json`
3. Read `06_vocabulaire/vocabulaire_master.json`
4. Read `PROGRESSION_GLOBALE.md`
5. Read `data/progression_master.json`
6. Read the latest relevant session journals, especially recent `SL` or grammar-heavy `VOC` sessions
7. Identify the exact source in `~/Study/books` or `~/Study/Francais/tcf`
8. If present, review `.learnings/*`
9. Check `./tools/bd-local ready --plain`

Do not start with generic grammar exercises.

## Shared workflow dependency

Use this skill after:
- `tcf-core-workflow`
- `tcf-phase1-warmup`
- `tcf-source-selection`

Hand off to `tcf-session-closure` when the session ends.

## Source priority

Use these first:
1. `~/Study/Francais/tcf/Entrainement TCF - Structure de langue*`
2. `~/Study/books/Grammaire Progressive Du Francais Avance.pdf`
3. `~/Study/books/Grammaire Essentielle du Francais B2/`
4. `~/Study/Francais/tcf/Les-verbes-et-leurs-prepositions.pdf`
5. `~/Study/Francais/tcf/conjugaison_30_verbes_indispensables.pdf`
6. `revisions/grammaire_progressive_avance/`

Always identify the exact chapter, page, or series used, and record why this source is the best fit now.

## Phase 1: warm-up from active weakness data

1. Inspect active and recently improved errors.
2. Classify points as `active`, `spot-check`, or `retired`.
3. Build a short warm-up that favors still-unstable patterns.
4. Keep recently improved points to `1-3` spot-check items only.

Common high-value targets:
- `si` clauses
- relative pronouns
- pronoun order
- article choice
- tense selection
- prepositions
- subjonctif vs indicatif
- negation
- connecteurs

## Core drill design

Default block:
- `15-20` questions
- mostly `QCM`
- optional short transformations if they directly test the same pattern
- minimum threshold: `15/20`

Recommended distribution:
- `6-8` questions from active personal errors
- `4-6` from the chosen source chapter
- `4-6` mixed transfer questions for generalization

Good formats:
- choose the correct form
- choose the correct preposition
- choose the correct pronoun or connector
- mini transformation with one precise target
- sentence completion with four plausible options

## Quality rules

Each item should test one precise competence.
Distractors must be plausible and explainable.
Do not create traps that depend on vague wording.
Do not mix multiple grammar targets in one item unless that complexity is the point.

## Correction loop

After the learner answers:
- give the score immediately
- correct every error
- explain the rule in `1-2` sentences max
- identify which patterns must go back into the next warm-up

Use this format:
- `❌ erreur -> ✅ correction`

## Phase 2 variations

Depending on the source, a good SL session can take one of three shapes:
1. `Pure TCF drill set`
   - several short QCM series from TCF structure books
2. `Repair session`
   - one or two recurring errors attacked from multiple angles
3. `Chapter transfer session`
   - one grammar chapter reviewed briefly, then converted into TCF-style QCM

## Phase 3 updates

Update only when justified:
- `05_grammaire_supplementaire/erreurs_en_cours.json`
- `data/progression_master.json`
- `PROGRESSION_GLOBALE.md`
- `sessions/YYYY-MM-DD_tcf_sl.md`

Also:
- review the session thread and fold important clarifications back into the saved artifact
- log durable workflow lessons with `self-improving-agent` when warranted
- update Beads only for real follow-up work

If a point is clearly stabilized, reduce it to spot-check or retire it from default warm-ups.

## Pitfalls

Avoid:
- repeating the same grammar sentences from session to session
- over-teaching theory with too little practice
- mixing too many weak points into one messy block
- turning resolved points back into full drills without evidence of relapse
- leaving correction explanations too long or too vague

## Success criteria

A strong SL session should produce:
- a clear score against a meaningful threshold
- narrower, better-defined active grammar weaknesses
- fewer unstable patterns in `erreurs_en_cours.json`
- better readiness for TCF distractor elimination
