# Migration Map

This page maps current repo artifacts to their target role in the global `fr/` wiki.

## Core principle
- Keep existing files that are useful for event logging or machine-readable tracking.
- Add canonical markdown pages under `fr/` for durable compiled understanding.

## Current artifact -> target compiled role

| Current artifact | Current role | Target `fr/` role |
|---|---|---|
| `06_vocabulaire/vocabulaire_master.json` | machine-readable vocabulary tracker | source/index for canonical vocabulary theme, contrast, and phrase-bank pages under `fr/vocabulary/` |
| `05_grammaire_supplementaire/erreurs_en_cours.json` | machine-readable grammar error tracker | source/index for rule and error-pattern pages under `fr/grammar/` |
| `data/progression_master.json` | progression and next-session metadata | support source for milestone and cross-session synthesis pages under `fr/sessions/` |
| `sessions/YYYY-MM-DD_tcf_[module].md` | event-style session journal | raw/event source for canonical pages across `fr/vocabulary/`, `fr/grammar/`, `fr/ce/`, `fr/co/`, `fr/po/`, `fr/questions/`, and `fr/sessions/` |
| `po/` | specialized PO wiki instance | `PO` branch of the global French wiki, linked via `fr/po/` and later integrated more tightly |
| `revisions/` | revision/reference content and lesson artifacts | upstream content for grammar and vocabulary canonical pages |
| durable chat clarifications | often trapped in chat history | raw captures under `fr/raw/chats/` plus canonical updates to relevant pages |
| TCF/textbook question sets | source exercises and prompts | raw captures under `fr/raw/questions/` or `fr/raw/books/`, then synthesis into `fr/ce/`, `fr/co/`, `fr/questions/`, `fr/vocabulary/`, or `fr/grammar/` |

## First canonical pages created in Phase 4
- `fr/grammar/error-patterns/ce-que-ce-qui-dont.md`
- `fr/grammar/error-patterns/si-plus-que-parfait-conditionnel-passe.md`
- `fr/vocabulary/contrasts/journaliste-redacteur-en-chef-auditeur.md`
- `fr/vocabulary/themes/environnement.md`
- `fr/questions/qcm-distractor-patterns.md`
- `fr/sessions/milestones.md`

## Operating rule
For any future session, do not ask only whether trackers need updates.
Also ask which canonical `fr/` page should be created or updated so the knowledge compounds.
