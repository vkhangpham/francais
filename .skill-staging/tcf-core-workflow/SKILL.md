---
name: tcf-core-workflow
description: Shared core workflow for TCF sessions in this repo. Use before any substantial `SL`, `VOC`, `CE`, `CO`, or `MIX` session to apply the canonical pre-read, language policy, skill sequencing, persistence expectations, and closure handoff consistently.
---

# TCF Core Workflow

Use this skill as the shared base layer for all non-`PO` TCF study sessions in this workspace.

This skill does not replace the module skills. It standardizes the parts they all share so those rules do not drift across `SL`, `VOC`, `CE`, `CO`, and `MIX`.

## Trigger

Use when:
- Kyle starts `/learn-fr` and chooses `SL`, `VOC`, `CE`, `CO`, or `MIX`
- a substantial TCF session is about to be built
- you need the canonical pre-read before Phase 1 and Phase 2 work
- you need the default orchestration order across skills

## Canonical role

Treat this as the shared workflow layer.

Relationship to other skills:
1. `tcf-core-workflow` = shared pre-read, sequencing, language mode, persistence rules
2. `tcf-phase1-warmup` = Phase 1 construction
3. `tcf-source-selection` = Phase 2 source choice
4. module skill = `SL`, `VOC`, `CE`, `CO`, or `MIX`
5. `tcf-session-closure` = end-of-session integration and updates

## Canonical pre-read for non-PO sessions

Before building the session:
1. read `GUIDE_EXERCICES_FAIBLESSES.md`
2. read `06_vocabulaire/vocabulaire_master.json`
3. read `05_grammaire_supplementaire/erreurs_en_cours.json`
4. read `data/progression_master.json`
5. read `PROGRESSION_GLOBALE.md`
6. read the latest relevant session journal(s) in `sessions/`
7. identify the exact candidate source area in `~/Study/books` or `~/Study/Francais/tcf`
8. review `.learnings/LEARNINGS.md`, `.learnings/ERRORS.md`, and `.learnings/FEATURE_REQUESTS.md` if present
9. check `./tools/bd-local ready --plain` when the next priority is unclear or follow-up work may matter

Do not start a substantial session from memory alone.

## Language policy

- Use French for learner-facing study content: exercises, lessons, drills, correction blocks, cue material.
- Use English for technical, operational, tooling, Git, and repo-maintenance commentary unless Kyle explicitly asks for French.
- Keep learner-facing output terminal-friendly.

## Canonical sequencing

Default order:
1. apply `tcf-core-workflow`
2. run `tcf-phase1-warmup`
3. run `tcf-source-selection`
4. run the relevant module skill
5. run `tcf-session-closure` when the session ends

## Persistence rules

During or after the session, update only what the evidence justifies.

Common candidate files:
- `06_vocabulaire/vocabulaire_master.json`
- `05_grammaire_supplementaire/erreurs_en_cours.json`
- `data/progression_master.json`
- `PROGRESSION_GLOBALE.md`
- `sessions/YYYY-MM-DD_tcf_[module].md`

Rules:
- update tracking only for durable gains, durable weaknesses, or changed next-session guidance
- do not force mechanical updates after every session
- if a point is clearly stabilized, reduce it to spot-check or retire it from default warm-up
- fold important clarifications from the chat back into the saved artifact

## Source-first rule

Before Phase 2 generation:
- identify the exact source
- record exact location
- know why this source is being chosen now
- reject sources whose extraction/correction burden outweighs the likely gain

## Follow-up rule

- use `self-improving-agent` for durable workflow lessons, user corrections, or repeatable improvements
- use Beads only for real follow-up work worth tracking
- avoid noisy backlog creation for trivial observations

## Success criteria

A good session that follows this core workflow should:
- start from fresh repo state
- use the right source before generating Phase 2
- keep learner-facing content in French
- leave behind only justified persistence updates
- hand off cleanly to `tcf-session-closure`
