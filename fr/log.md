# Global French Wiki Log

## [2026-04-06] bootstrap | created global French wiki scaffold
- created top-level `fr/` wiki entrypoint for the entire French learning system
- defined a global schema for ingest/query/lint across chats, sessions, vocabulary, grammar, CE, CO, PO, and question patterns
- clarified that existing JSON trackers remain useful support infrastructure but are not the only durable memory layer
- marked the existing `po/` wiki as one subdomain inside a broader global French wiki architecture

## [2026-04-06] phase-2 | created page-family scaffolds and migration map
- created starter landing pages for `profile`, `vocabulary`, `grammar`, `ce`, `co`, `po`, `sessions`, and `questions`
- added a migration map linking current repo artifacts to their future canonical roles under `fr/`
- updated the global index so the page families are now concrete linked entrypoints instead of only planned categories

## [2026-04-06] phase-3 | defined dual-write operating rules
- added a Phase 3 dual-write policy so important sessions must update both the event/tracker layer and the compiled wiki layer
- added a reusable post-session checklist and a session dual-write template
- updated the global schema and index so future ingests follow the dual-write model by default

## [2026-04-06] phase-4 | created first canonical content pages
- created the first backfilled canonical pages for recurring grammar weak points, lexical contrasts, QCM distractor patterns, and cross-session milestones
- compiled durable knowledge out of session journals and JSON trackers into reusable `fr/` pages
- established the first real examples of the global French wiki acting as a compiled layer instead of only a scaffold

## [2026-04-06] phase-5 | first maintenance pass and targeted backfill
- ran the first explicit global maintenance pass against canonical pages, trackers, and current-cycle sessions
- recorded the findings in `fr/reviews/maintenance_pass_2026-04-06.md`
- created the next media contrast pages for `émission / programme`, `numéro / rubrique`, and `en direct / en différé`
