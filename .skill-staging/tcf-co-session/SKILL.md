---
name: tcf-co-session
description: Run a TCF compréhension orale session for this repo. Use when the selected module is CO and the session must stay listening-centered, QCM-oriented, and grounded in real TCF or carefully chosen audio sources with transcript-aware correction.
---

# TCF CO Session

Use this skill for module `CO` in this workspace.

The goal is not free conversation. The goal is listening discrimination, note-taking, inference, and closed-answer correction.
Assume `tcf-core-workflow` has already been applied unless you explicitly need to recover the shared base rules.

## Trigger

Use when:
- Kyle starts `/learn-fr` and chooses `CO`
- the next study block should train listening through QCM or other closed prompts
- a transcript-backed listening correction loop is needed

## Mandatory pre-read

Before picking audio:
1. Read `GUIDE_EXERCICES_FAIBLESSES.md`
2. Read `06_vocabulaire/vocabulaire_master.json`
3. Read `05_grammaire_supplementaire/erreurs_en_cours.json`
4. Read `PROGRESSION_GLOBALE.md`
5. Read `data/progression_master.json`
6. Read recent relevant `sessions/*_tcf_co.md` or equivalent listening history
7. Identify the exact source in `~/Study/Francais/tcf` or another priority audio bank
8. If present, review `.learnings/*`
9. Check `./tools/bd-local ready --plain`

## Shared workflow dependency

Use this skill after:
- `tcf-core-workflow`
- `tcf-phase1-warmup`
- `tcf-source-selection`

Hand off to `tcf-session-closure` when the session ends.

## Source priority

Prefer:
1. official or book-based TCF audio with transcript/corrigé
2. `ABC TCF` audio banks
3. `Reussir le TCF` audio banks
4. other structured TCF listening material
5. authentic audio only when the length and correction quality are manageable

## Session structure

### Phase 1

Keep the standard adaptive warm-up, but bias it toward listening readiness:
- key theme vocabulary
- oral connectors and markers
- one short grammar spot-check only if still active

### Phase 2

Use one listening set at a time.

Recommended flow:
1. present the source and theme
2. pre-activate `10-15` key words or signals if helpful
3. let Kyle inspect the question types
4. first listening: global meaning
5. short pause to organize notes
6. second listening: details and distinctions
7. answer QCM / closed prompts
8. correct with transcript or precise evidence

## Preferred question targets

- who is speaking
- main topic or purpose
- key factual details
- opinion / agreement / disagreement
- sequence and cause-effect
- nuance signaled by oral connectors or tone

## Correction rules

After answers:
- give the score
- correct every wrong answer
- cite the decisive spoken clue, paraphrase, or transcript fragment
- distinguish between:
  - vocabulary miss
  - sound recognition miss
  - note-taking miss
  - inference miss
  - distraction / over-interpretation

If transcript exists, use it for verification after the listening attempt, not before.
If no transcript or corrigé exists, keep the clip short, use replayable evidence carefully, and mark any confidence limits in the correction.

## Practical note-taking guidance

Encourage short-note capture of:
- speakers
- main idea
- 2-3 core arguments
- numbers / dates / named entities
- conclusion or final opinion

## Phase 3 updates

Update as justified:
- `06_vocabulaire/vocabulaire_master.json`
- `05_grammaire_supplementaire/erreurs_en_cours.json` when a listening-linked language weakness becomes durable enough to track
- `data/progression_master.json`
- `PROGRESSION_GLOBALE.md`
- `sessions/YYYY-MM-DD_tcf_co.md`

Also:
- document the exact audio source, track identifier, and transcript/corrigé status in the saved artifact
- classify recurring misses clearly: vocab / sound recognition / note-taking / inference / distraction
- review the session thread and fold important clarifications back into the journal
- log durable workflow lessons with `self-improving-agent` when warranted
- update Beads only for real follow-up work

If a listening-specific weakness keeps recurring, document it clearly for future warm-ups or follow-up tasks.

## Pitfalls

Avoid:
- turning CO into a speaking exercise
- correcting without transcript evidence when better evidence is available
- choosing audio that is too long or too chaotic for useful correction
- front-loading so much pre-teaching that the listening challenge disappears
- using only global-comprehension questions and skipping discriminating details

## Success criteria

A strong CO session leaves behind:
- a clearly identified audio source
- a clean double-listening correction loop
- evidence-backed explanation for each miss
- reusable notes on recurring listening bottlenecks
