# Beads Commands

These are the highest-value Beads commands for agent workflows and study tracking.

## Initialization

Use stealth mode in repos where you want local planning without repo churn:

```bash
bd init --stealth --skip-agents --skip-hooks -p fr
```

Beads describes stealth mode as the personal-use path for shared repos and git-free usage in its main README.

## Everyday Commands

```bash
bd ready --plain
bd list --parent <id>
bd show <id>
bd update <id> --claim
bd update <id> --status blocked
bd close <id> --reason "Completed"
```

## Create Issues Well

Prefer titles plus enough context:

```bash
bd create "Backfill weak subjunctive patterns" \
  --description "Extract recurring errors from erreurs_en_cours.json and convert them into a focused SL drill." \
  -t task -p 1
```

Link discovered work:

```bash
bd create "Review preposition mistakes after CE drill" \
  --description "Observed recurring preposition errors while correcting CE answers." \
  -t task -p 2 --deps discovered-from:<parent-id>
```

## Hierarchy

Use epics for long-running goals and tasks for concrete next actions.

Suggested shape:

- epic: `TCF Mastery and Study System`
- epic children: `Structure de langue`, `Vocabulaire`, `Comprehension ecrite`, `Comprehension orale`, `Weakness tracking`
- tasks: drills, backfills, source extraction, review sessions, and data updates

## Agent Workflow Notes

The Beads README emphasizes:

- `bd ready` for unblocked work
- `bd create` for new issues
- `bd update --claim` to atomically claim work
- `bd show` for issue details

Source:
- [Beads README](https://raw.githubusercontent.com/steveyegge/beads/main/README.md)
