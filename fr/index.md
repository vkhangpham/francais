# Global French Wiki Index

## Core
- [README](README.md) - entrypoint and purpose of the global French wiki
- [schema](schema.md) - ingest/query/lint rules for the full French learning system
- [log](log.md) - chronological record of global wiki changes

## Page families
- [profile](profile/README.md) - learner profile, preferences, weak points, and study constraints
- [vocabulary](vocabulary/README.md) - themes, contrasts, phrase banks, and conceptual clarifications
- [grammar](grammar/README.md) - rules, contrasts, and error-pattern pages
- [ce](ce/README.md) - comprehension ecrite source digests, question types, and distractor patterns
- [co](co/README.md) - comprehension orale source digests, question types, and listening traps
- [po](po/README.md) - speaking scenarios, frameworks, concepts, and reusable answers
- [sessions](sessions/README.md) - cross-session syntheses and milestone pages
- [questions](questions/README.md) - reusable question families, reviewed mistakes, and drill archetypes
- [reviews](reviews/lint_notes.md) - lint findings, contradictions, stale content, and migration notes
- [reviews/migration_map](reviews/migration_map.md) - mapping from existing repo artifacts to canonical global wiki pages
- [reviews/dual_write_policy](reviews/dual_write_policy.md) - operating rule for updating both event/tracker and compiled wiki layers
- [reviews/dual_write_checklist](reviews/dual_write_checklist.md) - post-session checklist for Phase 3 dual-write
- [reviews/maintenance_pass_2026-04-06](reviews/maintenance_pass_2026-04-06.md) - first explicit global maintenance pass and action list
- [templates/session_dual_write_template](templates/session_dual_write_template.md) - reusable template for planning post-session dual-write updates

## First canonical content pages
- [grammar/error-patterns/ce-que-ce-qui-dont](grammar/error-patterns/ce-que-ce-qui-dont.md) - canonical page for the recurring relative-pronoun confusion in TCF context
- [grammar/error-patterns/si-plus-que-parfait-conditionnel-passe](grammar/error-patterns/si-plus-que-parfait-conditionnel-passe.md) - canonical page for the recurring `si`-hypothesis error pattern
- [vocabulary/contrasts/journaliste-redacteur-en-chef-auditeur](vocabulary/contrasts/journaliste-redacteur-en-chef-auditeur.md) - canonical media-role contrast page
- [vocabulary/contrasts/emission-programme](vocabulary/contrasts/emission-programme.md) - canonical contrast page for one show vs the broader schedule
- [vocabulary/contrasts/numero-rubrique](vocabulary/contrasts/numero-rubrique.md) - canonical contrast page for issue vs section in print media
- [vocabulary/contrasts/direct-differe](vocabulary/contrasts/direct-differe.md) - canonical contrast page for live vs delayed broadcast
- [vocabulary/themes/environnement](vocabulary/themes/environnement.md) - canonical environment theme page from the 2026-03-31 VOC session
- [questions/qcm-distractor-patterns](questions/qcm-distractor-patterns.md) - starter page for recurring QCM trap families
- [sessions/milestones](sessions/milestones.md) - cross-session summary page for the active TCF cycle

## Current linked systems outside `fr/`
- `05_grammaire_supplementaire/erreurs_en_cours.json` - machine-readable grammar error tracker
- `06_vocabulaire/vocabulaire_master.json` - machine-readable vocabulary tracker
- `data/progression_master.json` - machine-readable progression dashboard
- `sessions/` - event-style session records
- `po/` - existing PO wiki instance to be integrated as a subdomain of the broader French wiki

## Current state
- global wiki scaffold created
- page-family landing pages created for all major domains
- migration map added for old-artifact -> canonical-page planning
- initial canonical backfill has started for grammar, vocabulary, question patterns, and session milestones
- existing repo knowledge still lives mainly in JSON trackers, session journals, `po/`, and revision folders
