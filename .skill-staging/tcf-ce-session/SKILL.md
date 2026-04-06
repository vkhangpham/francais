---
name: tcf-ce-session
description: Run a TCF compréhension écrite session for this repo. Use when the selected module is CE and the session must stay closed-format, text-grounded, and aligned with the repo's source-first workflow rather than generic freeform reading practice.
---

# TCF CE Session

Use this skill for module `CE` in this workspace.

The goal is to train closed-format reading performance: scanning, paraphrase recognition, inference, and QCM elimination.
Assume `tcf-core-workflow` has already been applied unless you explicitly need to recover the shared base rules.

## Trigger

Use when:
- Kyle starts `/learn-fr` and chooses `CE`
- the session needs text-based TCF reading practice in QCM format
- reading performance needs to be trained without long written production

## Mandatory pre-read

Before selecting texts:
1. Read `GUIDE_EXERCICES_FAIBLESSES.md`
2. Read `06_vocabulaire/vocabulaire_master.json`
3. Read `05_grammaire_supplementaire/erreurs_en_cours.json`
4. Read `PROGRESSION_GLOBALE.md`
5. Read `data/progression_master.json`
6. Read recent relevant `sessions/*_tcf_ce.md` or earlier CE-equivalent sessions
7. Identify the exact source in `~/Study/Francais/tcf` or another priority resource
8. If present, review `.learnings/*`
9. Check `./tools/bd-local ready --plain`

## Shared workflow dependency

Use this skill after:
- `tcf-core-workflow`
- `tcf-phase1-warmup`
- `tcf-source-selection`

Hand off to `tcf-session-closure` when the session ends.

## Source priority

Prefer source-grounded CE work in this order:
1. TCF reading materials in `~/Study/Francais/tcf`
2. `ABC TCF`
3. `250_activites`
4. `Reussir le TCF`
5. `TCF TV5 NEW`
6. carefully chosen authentic texts only when they fit repo goals

## Text-selection rules

Choose texts that are:
- suitable for closed questions
- not overly technical
- useful for TCF themes such as society, economy, environment, education, media, culture, or institutions
- different enough from the last recent CE themes to avoid repetition

Whenever possible, use one exact source and record the page or document.

## Session structure

### Phase 1

Use the standard adaptive warm-up:
- short grammar spot-check if relevant
- short vocab reactivation tied to likely reading themes
- short recent-errors reminder only for unstable points

### Phase 2

Build a CE block around one or two texts.

Recommended default:
- `1-2` texts
- mostly `QCM`
- optional limited true/false/not stated if the source naturally supports it
- no long written response

Question targets:
- global idea
- explicit information
- paraphrase recognition
- implied meaning
- author's position or tone
- reference tracking
- logic of connectors and examples

## Question-writing rules

Every question must:
- be answerable from the text
- avoid ambiguous wording
- have plausible distractors
- target one reading skill at a time
- remain self-contained in terminal-friendly format

Strong distractors often come from:
- nearby details in the text
- partial truths
- inverted logic
- wrong scope or wrong speaker

## Correction method

After answers:
- give the score
- correct each wrong answer
- point to the textual evidence or paraphrase that justified the answer
- identify whether the miss was due to vocabulary, inference, or reading strategy

If vocabulary caused confusion, mark it for possible reinjection into `vocabulaire_master.json`.

## Phase 3 updates

Update as justified:
- `06_vocabulaire/vocabulaire_master.json`
- `05_grammaire_supplementaire/erreurs_en_cours.json` when a reading-linked language weakness becomes stable enough to track
- `data/progression_master.json`
- `PROGRESSION_GLOBALE.md`
- `sessions/YYYY-MM-DD_tcf_ce.md`

Also:
- record the exact source, page/document window, and theme-rotation rationale in the saved artifact
- review the session thread and fold important clarifications back into the journal
- log durable workflow lessons with `self-improving-agent` when warranted
- update Beads only for real follow-up work

If a reading-strategy problem recurs, log it in session notes and create follow-up work if it deserves a future task.

## Pitfalls

Avoid:
- turning CE into open-ended literary discussion
- writing questions that can be answered by common sense instead of the text
- using texts with too much technical density for the gain they provide
- reusing the same theme too quickly without a strategic reason
- forgetting to explain why distractors were wrong

## Success criteria

A strong CE session leaves behind:
- a clearly sourced text set
- closed questions with explainable answers
- explicit diagnosis of vocabulary vs inference vs attention errors
- reusable notes for the next CE theme rotation
