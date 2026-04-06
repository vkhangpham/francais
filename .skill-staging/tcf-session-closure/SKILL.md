---
name: tcf-session-closure
description: Close a TCF study session in this repo using the full Phase 3 workflow. Use when Kyle asks to finish a session or when a substantial session ends and the journal, tracking files, learnings, Beads state, and optional commit all need to be handled cleanly.
---

# TCF Session Closure

Use this skill when Kyle says something like `terminons cette séance`, asks to close the session, or a substantial study block has clearly ended.

This repo has an explicit close-out workflow. Do not end with a quick summary only.
Treat this skill as the canonical closure playbook; top-level docs should point here instead of restating the whole procedure in parallel.

## Trigger

Use when:
- the user asks to finish or close the session
- a major study session is complete and repo updates are due
- a session created meaningful changes in lesson files, progress tracking, or follow-up work

## Mandatory pre-read

Before closing:
1. Read the session journal draft if one exists
2. Review the active conversation and recent clarifications from the user
3. Read any files that are candidates for update:
   - `sessions/YYYY-MM-DD_tcf_[module].md`
   - `06_vocabulaire/vocabulaire_master.json`
   - `05_grammaire_supplementaire/erreurs_en_cours.json`
   - `data/progression_master.json`
   - `PROGRESSION_GLOBALE.md`
4. If present, review `.learnings/*`
5. Check Beads status with `./tools/bd-local ready --plain`

## Closure checklist

Follow this order when possible.

### 1. Clean the final lesson or journal
- make sure the final study artifact is coherent and worth rereading
- remove obvious inconsistencies or rough scaffolding
- keep corrections and explanations usable for later review

### 2. Re-read the whole session thread
- include user questions, objections, reformulations, and clarification requests
- identify explanations that should live in the journal, not only in chat

### 3. Integrate clarifications back into the lesson or journal
- enrich the exact section that caused confusion
- add examples, reformulations, or transitions where needed
- do not leave important clarifications stranded in chat history

### 4. Complete the session journal
Use `sessions/YYYY-MM-DD_tcf_[module].md`.
Include at least:
- module
- exact source(s)
- warm-up basis
- key lesson content or results
- score(s) when meaningful
- fragile points and next review targets

### 5. Update tracking data only if justified
Potential files:
- `06_vocabulaire/vocabulaire_master.json`
- `05_grammaire_supplementaire/erreurs_en_cours.json`
- `data/progression_master.json`
- `PROGRESSION_GLOBALE.md`

Rules:
- add new durable gains
- add stable new errors
- reduce or retire warm-up defaults for points clearly stabilized
- do not force updates when evidence is weak or noisy

### 6. Log durable learnings
Use the local self-improvement workflow when there was:
- a user correction
- a workflow mistake
- a new durable rule
- a reusable improvement to future sessions

Prefer short, actionable entries.
Promote recurring rules when they belong in repo guidance.

### 7. Update Beads
Use Beads for real follow-up work:
- close finished task(s)
- add or update follow-up task(s) if the session exposed a next action worth tracking
- re-check `./tools/bd-local ready --plain`

Do not create Beads noise for trivial observations.

### 8. Commit useful changes if appropriate
If the workspace has useful session-related changes, create a focused commit.
Use a targeted message such as:
- `[TCF][VOC] score/max, vocab X, erreurs Y`
- `[TCF][SL] targeted warm-up and tracking refresh`

### 9. Give a brief final close-out response
Summarize very briefly:
- score or practical result
- points worked on
- priority next step(s)
- Beads / commit status if relevant

## Decision rules

### Update tracking files when
- the session produced clear vocabulary gains
- a grammar weakness relapsed or stabilized clearly
- the next-session guidance should change

### Skip tracking updates when
- the signal is too weak
- the session was exploratory only
- no stable acquisition or stable error pattern emerged

### Commit when
- there are meaningful repo changes worth preserving together
- the session journal or data updates would be useful to recover later

### Skip commit when
- changes are trivial, partial, or not yet coherent

## Pitfalls

Avoid:
- ending with a chat-only summary and no file integration
- forgetting to fold user clarifications back into the lesson
- updating every data file mechanically after every session
- keeping stabilized points in default warm-up forever
- opening Beads tasks for every tiny observation

## Success criteria

A strong session closure leaves behind:
- a clean reusable session journal
- fresh enough tracking data
- follow-up work captured only where it matters
- a short final summary with no loose ends
