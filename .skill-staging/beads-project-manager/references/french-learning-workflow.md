# French Learning Workflow

Use Beads as the planning layer for study work in this repo.

## What to Track

Track in Beads:

- module-level improvement goals
- next study sessions
- recurring weakness cleanups
- backlog items created from corrections or poor scores
- follow-up work needed after updating vocabulary, grammar, or progression data

Do not over-track:

- every single answered question
- one-off observations that need no follow-up
- corrections already fully captured in `.learnings/`

## Suggested Issue Layout

Top epic:

- `TCF Mastery and Study System`

Child epics:

- `Structure de langue improvement loop`
- `Vocabulaire retention loop`
- `Comprehension ecrite practice loop`
- `Comprehension orale practice loop`
- `Weakness and review tracking`

Good task examples:

- `Backfill recurring grammar weaknesses from erreurs_en_cours.json`
- `Extract 20 weak VOC items from vocabulaire_master.json`
- `Run next MIX session and log score breakdown`
- `Update progression dashboard after CE session`

## Priority Heuristic

- `P0`: blocking the study system itself
- `P1`: high-value weaknesses or imminent exam prep gaps
- `P2`: normal next-session work
- `P3`: nice-to-have cleanup or later review

## Labels

Use a small label vocabulary:

- `module/sl`
- `module/voc`
- `module/ce`
- `module/co`
- `area/review`
- `area/system`
- `source/tcf`

## Relationship to `.learnings/`

Use `.learnings/` for the raw lesson.

Promote to Beads when the raw lesson becomes one of these:

- a review task
- a backlog item
- a repeated weakness to address
- a system/process improvement

Example:

- `.learnings/ERRORS.md`: "Forgot exact source before generating Phase 2"
- Beads task: `Add source-identification checklist before Phase 2 generation`
