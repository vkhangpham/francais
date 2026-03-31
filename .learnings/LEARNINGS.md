# Learnings

Corrections, insights, and knowledge gaps captured during development.

**Categories**: correction | insight | knowledge_gap | best_practice
**Areas**: frontend | backend | infra | tests | docs | config
**Statuses**: pending | in_progress | resolved | wont_fix | promoted | promoted_to_skill

## Status Definitions

| Status | Meaning |
|--------|---------|
| `pending` | Not yet addressed |
| `in_progress` | Actively being worked on |
| `resolved` | Issue fixed or knowledge integrated |
| `wont_fix` | Decided not to address (reason in Resolution) |
| `promoted` | Elevated to CLAUDE.md, AGENTS.md, or copilot-instructions.md |
| `promoted_to_skill` | Extracted as a reusable skill |

## Skill Extraction Fields

When a learning is promoted to a skill, add these fields:

```markdown
**Status**: promoted_to_skill
**Skill-Path**: skills/skill-name
```

Example:
```markdown
## [LRN-20250115-001] best_practice

**Logged**: 2025-01-15T10:00:00Z
**Priority**: high
**Status**: promoted_to_skill
**Skill-Path**: skills/docker-m1-fixes
**Area**: infra

### Summary
Docker build fails on Apple Silicon due to platform mismatch
...
```

---

## [LRN-20260324-001] repeatable-learning-bootstrap

**Logged**: 2026-03-24T16:40:00Z
**Priority**: high
**Status**: promoted
**Area**: infra

### Summary
This repo should bootstrap its own learning workflow instead of depending on hidden machine state.

### Details
- Keep repo-local scripts for installing skills, bootstrapping the workspace, and showing session status.
- Version the hidden repo folders that matter for reuse: `.learnings/`, `.skill-staging/`, and `.codex/settings.json`.
- Prefer a lightweight startup path over a rigid study plan.

### Resolution
- **Resolved**: 2026-03-24T16:40:00Z
- **Notes**: Added `tools/install-local-skills`, `tools/bootstrap-learning-workspace`, `tools/learn-fr`, project Codex hooks, and repo docs.

## [LRN-20260325-001] language-switch-preference

**Logged**: 2026-03-25T08:12:00Z
**Priority**: medium
**Status**: resolved
**Area**: docs

### Summary
When the user explicitly asks to switch languages, follow the new language immediately instead of mirroring the previous workspace language.

### Details
- This workspace started in French because of repo guidance and the study context.
- The user explicitly requested English for the rest of the OCR debugging.
- Language choice should track the user's latest explicit preference, especially for technical debugging work.

### Resolution
- **Resolved**: 2026-03-25T08:12:00Z
- **Notes**: Continue OCR/debugging responses in English until the user asks to switch again.

## [LRN-20260331-001] english-default-outside-learning-sessions

**Logged**: 2026-03-31T18:10:00+07:00
**Priority**: high
**Status**: promoted
**Area**: docs

### Summary
In this workspace, English should be the default for operational, technical, and repo-maintenance work. Use French only during active learning sessions or when the user explicitly asks for French.

### Details
- The previous guidance correctly pushed study sessions into French, but it was still too easy to over-apply that rule to unrelated work.
- The user explicitly clarified that French is for learning mode only, not for general repo operations.
- Tasks like Git, tooling, debugging, automation, and maintenance should default to English unless the user asks to conduct them in French.

### Resolution
- **Resolved**: 2026-03-31T18:10:00+07:00
- **Notes**: Updated `AGENTS.md` to make English the default outside learning sessions while preserving French-first behavior for actual study work.

## [LRN-20260325-002] vision-ocr-fallback-on-apple-silicon

**Logged**: 2026-03-25T08:38:00Z
**Priority**: high
**Status**: resolved
**Area**: infra

### Summary
On this Apple Silicon Mac, macOS Vision OCR is a better default fallback than local GLM-OCR for scanned French textbook pages.

### Details
- `mlx-vlm` + `GLM-OCR` can be patched to stop crashing, but the returned text may still contain formatting loss or noisy characters on full-page scans.
- A small repo-local wrapper, `./tools/ocr-vision`, can OCR either an image or a single PDF page using the built-in Vision framework.
- On the same rendered page from `Vocabulaire progressif du français avancé`, Vision OCR produced a cleaner and more complete transcript than GLM-OCR.

### Resolution
- **Resolved**: 2026-03-25T08:38:00Z
- **Notes**: Prefer `./tools/ocr-vision --page <n> <pdf>` for immediate study use. Keep `tmux` session `servers` windows `ollama` and `mlx-glmocr` only for continued model experimentation.

## [LRN-20260325-003] french-lesson-first-for-study-sessions

**Logged**: 2026-03-25T17:20:00+07:00
**Priority**: high
**Status**: resolved
**Area**: docs

### Summary
In this French study workspace, respond in French for learning sessions and structure vocabulary work as a lesson first, not as exercises immediately.

### Details
- The user explicitly corrected the session flow after an English response and exercise-first format.
- For `VOC` sessions, prefer this order: lesson, target vocabulary, examples, short reading using the new words, then exercises.
- Keep the source anchored in the TCF books or study materials before creating adapted content.

### Resolution
- **Resolved**: 2026-03-25T17:20:00+07:00
- **Notes**: Future study sessions in this workspace should default to French unless the user asks otherwise, and should present a teaching sequence before drills.

## [LRN-20260325-004] preserve-french-accents-in-study-materials

**Logged**: 2026-03-25T17:34:00+07:00
**Priority**: high
**Status**: resolved
**Area**: docs

### Summary
Do not force ASCII in lesson files for this French-learning workspace; preserve normal French accents in study content.

### Details
- A session file was written mostly without accents because a generic editing habit was applied too mechanically.
- In this repo, accents are part of the learning material and should not be stripped from explanations, examples, readings, or exercises.
- The generic ASCII default is not appropriate when the file itself is French pedagogical content.

### Resolution
- **Resolved**: 2026-03-25T17:34:00+07:00
- **Notes**: Corrected the session file to standard French spelling and will keep accents in future lesson content by default.

## [LRN-20260325-005] deeper-voc-lessons-and-inline-french-correction

**Logged**: 2026-03-25T17:42:00+07:00
**Priority**: high
**Status**: promoted
**Area**: docs

### Summary
For `VOC` sessions, spend much more time curating the lesson before presenting it, and correct the user's French wording inline during study conversations.

### Details
- A short list of words with one example each is not enough for this workspace.
- Vocabulary lessons should be prepared more relentlessly: more selection time, tighter curation, richer explanations, and better integration across examples and reading.
- The end of a `VOC` lesson should include one or more reading paragraphs that reuse the target vocabulary together.
- When the user writes in French, pay attention to phrasing, correct mistakes, and suggest a more natural expression while encouraging continued use of French.

### Resolution
- **Resolved**: 2026-03-25T17:42:00+07:00
- **Notes**: Promoted to `AGENTS.md` as a durable lesson-preparation and correction rule for future sessions.

## [LRN-20260325-006] respect-french-typography-in-study-content

**Logged**: 2026-03-25T18:03:00+07:00
**Priority**: high
**Status**: promoted
**Area**: docs

### Summary
When writing in French in this workspace, respect basic French typography, especially spacing before `:` `;` `?` and `!`.

### Details
- The lesson content used French words but kept English-style punctuation spacing in several places.
- For study materials, this matters because the wording itself is part of what the user is learning.
- This rule should apply both to lesson files and to direct French responses in chat.

### Resolution
- **Resolved**: 2026-03-25T18:03:00+07:00
- **Notes**: Corrected the session file and promoted the rule to `AGENTS.md`.

## [LRN-20260326-001] avoid-overcorrecting-fast-french-messages

**Logged**: 2026-03-26T09:10:00+07:00
**Priority**: high
**Status**: promoted
**Area**: docs

### Summary
When the user writes in French, correct real grammar mistakes or clearly unnatural phrasing, but do not nitpick quick shorthand such as missing capitalization or fragment-style prompts.

### Details
- The previous correction behavior was too aggressive for the user's preferred flow.
- Fast study chat often contains telegraphic prompts like `différence entre X et Y`, and those do not need full sentence correction when the meaning is obvious.
- Corrections should stay helpful and lightweight, focused on errors that materially improve the user's French.

### Resolution
- **Resolved**: 2026-03-26T09:10:00+07:00
- **Notes**: Updated `AGENTS.md` so future French corrections stay selective instead of overly formal.

## [LRN-20260326-002] session-closeout-means-full-workflow

**Logged**: 2026-03-26T09:18:00+07:00
**Priority**: high
**Status**: promoted
**Area**: docs

### Summary
In this workspace, `close the session` should trigger the full close-out workflow, not just a conversational summary.

### Details
- The user explicitly wants session closure to include reviewing the lesson, updating Beads, using `self-improving-agent`, and committing useful changes.
- Session closure should be a reliable operational ritual rather than an optional extra step.
- The close-out checklist should live both in the agent guide and in a repo-facing project guide so future sessions stay consistent.

### Resolution
- **Resolved**: 2026-03-26T09:18:00+07:00
- **Notes**: Added an explicit close-out checklist to `AGENTS.md` and mirrored a shorter version in `README.md`.

## [LRN-20260326-003] voc-lesson-prep-must-dominate-and-receive-final-qa

**Logged**: 2026-03-26T20:31:27+07:00
**Priority**: high
**Status**: promoted
**Area**: docs

### Summary
For `VOC` sessions, the majority of preparation effort must go into the lesson itself, and every exercise item must pass a final QA check for missing context or ambiguous wording before the session starts.

### Details
- The user explicitly reminded that `VOC` work in this workspace should prioritize deep lesson preparation over rapidly assembling exercises.
- A session item referred to `cette phrase` without actually showing the phrase, which means the lesson QA pass was not strict enough before delivery.
- In this repo, a `VOC` session is not ready until each prompt is self-contained: no missing sentence, no hidden referent, no context that the learner must guess.
- The lesson should be reviewed as a finished teaching artifact before the first exercise is sent in chat.

### Resolution
- **Resolved**: 2026-03-26T20:31:27+07:00
- **Notes**: Tightened `AGENTS.md` with an explicit `VOC` preparation and QA rule, corrected the ambiguous item in `sessions/2026-03-26_tcf_voc.md`, and re-read the session file before continuing.

## [LRN-20260330-001] hybrid-pdf-extraction-before-ocr

**Logged**: 2026-03-30T15:18:47+07:00
**Priority**: high
**Status**: promoted
**Area**: infra

### Summary
For local PDF consumption in this workspace, prefer native PDF text extraction first and use Vision OCR only as a fallback for scanned pages or empty text layers.

### Details
- The previous `tools/ocr-vision` path always rendered PDF pages to images and OCRed them, even when the PDF already had a clean embedded text layer.
- A lightweight native extraction pass using `PDFKit` is faster and preserves cleaner text for digital PDFs.
- The same command should stay backward compatible, so the best workflow is an `auto` mode: try native text first, then render and OCR only when the page has no usable text.
- Explicit debug modes help verify behavior on real study material: `--mode text` for text-layer only and `--mode ocr` for forced OCR.

### Resolution
- **Resolved**: 2026-03-30T15:18:47+07:00
- **Notes**: Added `tools/pdf-page-text.swift`, upgraded `tools/ocr-vision` to support `--mode auto|text|ocr` and `--min-text-chars`, verified native extraction on a digital PDF, and verified OCR fallback on `Grammaire Progressive Du Francais Avance.pdf` page 41.

## [LRN-20260331-002] thread-review-must-feed-back-into-lesson-files

**Logged**: 2026-03-31T16:38:06+07:00
**Priority**: high
**Status**: promoted
**Area**: docs

### Summary
At the end of a study session, review the full Codex thread and fold any useful clarifications back into the lesson or session journal so the final artifact captures what was actually taught.

### Details
- The user explicitly wants the close-out flow to include reviewing everything discussed in the Codex thread, not just the current lesson draft.
- If the user asks for a clarification about one section, that explanation should be inserted into the relevant part of the lesson or journal instead of remaining only in chat history.
- The final lesson should become clearer during close-out: add elaboration, examples, reformulations, or sharper transitions wherever the conversation showed confusion or missing context.
- This is especially important for `VOC` sessions, where the lesson file is meant to remain a reusable revision asset after the chat ends.

### Resolution
- **Resolved**: 2026-03-31T16:38:06+07:00
- **Notes**: Updated `AGENTS.md` so Phase 3 and the end-of-session checklist both require a full thread review and direct lesson-file improvements before closing the session.
