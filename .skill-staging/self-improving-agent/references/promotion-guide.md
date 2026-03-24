# Promotion Guide

Promote a learning when it should change future behavior across more than one task.

## Promote to the Right Place

| Target | Put this there |
|--------|----------------|
| `AGENTS.md` | workflow checklists, required follow-up commands, tool-use habits |
| `CLAUDE.md` or another repo agent file | durable project facts, environment rules, package manager choices, conventions |
| `.github/copilot-instructions.md` | repo-wide guidance that should help Copilot suggestions |

## Use Recurrence to Decide

Promote aggressively when all of these are true:

- The same issue happened at least 3 times.
- It appeared across at least 2 tasks or sessions.
- A short prevention rule would likely stop it next time.

Track recurrences with these metadata fields:

- `Pattern-Key`
- `Recurrence-Count`
- `First-Seen`
- `Last-Seen`

## Search Before Adding Another Entry

```bash
rg -n "Pattern-Key:|See Also:|keyword" .learnings
```

If a matching pattern already exists:

1. Increment `Recurrence-Count`.
2. Update `Last-Seen`.
3. Add a `See Also` link to the related task or entry.
4. Re-evaluate whether the lesson belongs in shared agent guidance now.

## Write the Promoted Rule

Convert the lesson into a short prevention rule:

- Good: `Use pnpm for installs in this repo; do not run npm install.`
- Bad: `I once tried npm and it broke because the project uses pnpm workspaces.`

## Review at Natural Breakpoints

Review pending high-priority learnings:

- before a major new task
- after finishing a feature
- when returning to an area with past failures

Quick checks:

```bash
rg -n "Status\\*\\*: pending" .learnings
rg -n "Priority\\*\\*: (high|critical)" .learnings
```
