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
