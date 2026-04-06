---
name: beads-project-manager
description: Use Beads (`bd`) as a project manager for planning, prioritizing, and tracking ongoing work in a coding or study workspace. Trigger this skill when Codex should initialize Beads in a repo, check ready work, create or update issues, organize an epic/task hierarchy, connect discoveries to follow-up work, or adapt Beads to the French-learning workflow in this workspace.
---

# Beads Project Manager

Use Beads as the structured backlog and next-action system. In this French workspace, Beads tracks study goals, recurring weaknesses that need scheduled follow-up, and the next ready study tasks.

## Quick Start

1. In this repo, prefer the wrapper first:

```bash
./tools/bd-local ready --plain
```

2. If deeper inspection is needed, check whether Beads is initialized:

```bash
bd status
```

3. If not initialized, use stealth mode in shared repos:

```bash
bd init --stealth --skip-agents --skip-hooks -p fr
```

4. See the next ready work:

```bash
bd ready --plain
```

5. Claim or update an issue:

```bash
bd update <id> --claim
bd update <id> --priority 1
```

6. Close finished work:

```bash
bd close <id> --reason "Completed"
```

## Use Beads for the Right Things

Use Beads when the item needs planning, prioritization, dependencies, or later follow-up.

| Put it in... | When it belongs there |
|--------------|-----------------------|
| `.learnings/` | raw lesson, correction, command failure, or insight discovered during work |
| Beads | scheduled follow-up task, recurring weakness, backlog item, or work that should become ready later |

A good default:

- Log the observation in `.learnings/` first if it is new.
- Create or update a Beads issue when the learning implies real follow-up work.

## Study Workflow

For this workspace, prefer this hierarchy:

- top epic: overall TCF preparation system
- child epics: `SL`, `VOC`, `CE`, `CO`, and study-system maintenance
- tasks: concrete study sessions, weakness backfills, review drills, source extraction, and data updates

Daily loop:

1. Read `AGENTS.md` and the current learning files.
2. Check `./tools/bd-local ready --plain` first.
3. Work the highest-value ready issue or create a new one if a real gap appears.
4. Close completed work and add discovered follow-up issues with dependencies when needed.

Read [references/french-learning-workflow.md](./references/french-learning-workflow.md) for the detailed mapping.

## Core Commands

- `bd ready --plain`: show unblocked next actions
- `bd list --parent <id>`: inspect a module or epic subtree
- `bd show <id>`: inspect a specific issue
- `bd create ...`: add new epics, tasks, or decisions
- `bd update <id> --claim`: claim work
- `bd update <id> --status blocked`: mark blocked work
- `bd close <id> --reason "..."`

Read [references/beads-commands.md](./references/beads-commands.md) for examples.

## Use the Bundled Script

Run:

```bash
./scripts/bootstrap-french-study.sh
```

This initializes Beads in stealth mode if needed and seeds a starter epic/task tree for this French workspace without duplicating titles that already exist.
Do not re-run this bootstrap routinely once the repo is already initialized.

## Environment Note

If Beads loses track of its Dolt server port in this workspace, read [references/troubleshooting.md](./references/troubleshooting.md). Prefer reconnecting to the already-running server over reinitializing the database.
