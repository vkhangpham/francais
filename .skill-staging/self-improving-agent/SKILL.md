---
name: self-improving-agent
description: Capture recurring mistakes, user corrections, command failures, missing capabilities, and better workflows as structured project learnings. Use when Codex should review prior learnings before substantial work, log a new learning after debugging or correction, bootstrap `.learnings/` files in a repo, or promote durable lessons into AGENTS.md, CLAUDE.md, or other shared agent guidance.
---

# Self-Improving Agent

Capture durable lessons from real work so future sessions repeat fewer mistakes and good patterns become project memory instead of disappearing in chat history.

## Review Existing Learnings

Before a substantial task, inspect `.learnings/` if it already exists.

Use:

```bash
rg -n "Priority\\*\\*: (high|critical)|Status\\*\\*: pending" .learnings
```

If the directory does not exist and the task is likely to surface reusable lessons, run:

```bash
./scripts/setup-learning-files.sh <project-root>
```

## Choose the Target File

| Situation | File | Notes |
|-----------|------|-------|
| Command or tool failure | `.learnings/ERRORS.md` | Log the failing command, error text, and likely fix |
| User correction | `.learnings/LEARNINGS.md` | Use category `correction` |
| Outdated assumption or knowledge gap | `.learnings/LEARNINGS.md` | Use category `knowledge_gap` |
| Better repeatable workflow or prevention rule | `.learnings/LEARNINGS.md` | Use category `best_practice` or `insight` |
| Missing capability the user asked for | `.learnings/FEATURE_REQUESTS.md` | Record use case and rough implementation |

## Capture the Entry

1. Search for related entries before appending a new one.

```bash
rg -n "Pattern-Key:|See Also:|keyword" .learnings
```

2. Copy the matching template from `assets/` or use the seeded project files.
3. Fill only the facts a future agent needs:
   - what happened
   - why it mattered
   - what to do next
   - which files or commands were involved
4. Add `See Also` when the issue is related to an existing entry.
5. For recurring patterns, set a stable `Pattern-Key` and maintain `Recurrence-Count`, `First-Seen`, and `Last-Seen`.

Prefer short, actionable summaries over long postmortems.

## Resolve or Promote the Entry

When the issue is fixed, change the status and add a short `Resolution` block.

Promote the learning when it should shape future behavior across tasks:

| Target | Promote when the lesson is... |
|--------|-------------------------------|
| `AGENTS.md` | a workflow rule, follow-up checklist, or tool-use habit |
| `CLAUDE.md` or another repo agent file | a durable project fact, convention, or environment rule |
| `.github/copilot-instructions.md` | shared guidance that should help Copilot in the repo |

Write promoted guidance as a prevention rule, not a long incident report.

## Use the Bundled Resources

- `scripts/setup-learning-files.sh`: Create `.learnings/` and seed the three template files.
- `scripts/activator.sh`: Emit a lightweight reminder for optional prompt hooks.
- `scripts/error-detector.sh`: Emit a reminder when hook output shows a failed command.
- `scripts/extract-skill.sh`: Scaffold a new Codex skill from a validated learning.
- `references/entry-formats.md`: Read for entry examples and field guidance.
- `references/promotion-guide.md`: Read for recurrence rules and promotion heuristics.
- `references/hooks-setup.md`: Read for Codex and Claude hook setup examples.
- `assets/*.md`: Copy or adapt as starter templates.

## Keep the Loop Small

- Log immediately after the lesson is clear.
- Prefer one concrete prevention rule over a vague reflection.
- Avoid duplicate entries when a recurrence update is enough.
- Review pending high-priority items at natural breakpoints.
