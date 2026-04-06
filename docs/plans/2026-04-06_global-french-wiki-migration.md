# Global French Wiki Migration Plan

> For Hermes: execute this migration phase by phase. Keep the current tracking JSON files and session journals, but introduce a top-level compiled markdown wiki for the entire French learning system.

Goal: turn the whole workspace into a Karpathy-style LLM-maintained knowledge base, not only `PO`.

Architecture: preserve raw study events and machine-readable trackers, but add a top-level `fr/` wiki that becomes the canonical compiled layer for reusable learning knowledge. `PO` remains a subdomain, while `VOC`, `SL`, `CE`, `CO`, sessions, questions, chat clarifications, and review patterns all become first-class wiki content.

Tech Stack: markdown files in-repo, existing JSON trackers, existing session journals, existing repo rules in `AGENTS.md` and `.skill-staging/`.

---

## Phase 1: Introduce the top-level French wiki layer

Objective: add a global wiki scaffold without disrupting the current workflow.

Deliverables:
- `fr/README.md`
- `fr/schema.md`
- `fr/index.md`
- `fr/log.md`
- `fr/raw/README.md`
- `fr/reviews/lint_notes.md`

Rules:
- `fr/` is the global compiled wiki for the whole French workspace.
- Existing JSON files remain in place.
- Existing `po/` stays in place and is treated as one module inside the broader system.
- No session migration yet.

Success criteria:
- The repo has a clear top-level place for global ingest/query/lint.
- The global wiki explicitly names all major domains: profile, vocabulary, grammar, CE, CO, PO, sessions, questions, reviews.
- README points users to the new wiki entrypoint.

## Phase 2: Define canonical page families and migration targets

Objective: make the target structure explicit before moving content.

Deliverables:
- page-family directories under `fr/`
- starter landing pages for each family
- a migration table mapping old artifacts to new compiled pages

Target page families:
- `fr/profile/`
- `fr/vocabulary/`
- `fr/grammar/`
- `fr/ce/`
- `fr/co/`
- `fr/po/`
- `fr/sessions/`
- `fr/questions/`
- `fr/reviews/`

Success criteria:
- Every recurring type of durable knowledge has a canonical home.
- It is clear what belongs in JSON vs markdown.

## Phase 3: Start dual-write from live sessions

Objective: every future session should update both event records and compiled wiki pages.

Workflow:
1. keep the normal session journal or raw source capture
2. update JSON trackers if needed
3. update one or more canonical `fr/` pages with durable synthesis
4. append `fr/log.md`

Examples:
- a `VOC` session updates a theme/contrast page under `fr/vocabulary/`
- an `SL` session updates a rule/error-pattern page under `fr/grammar/`
- a `CE` session updates a question-type or distractor page under `fr/ce/` or `fr/questions/`
- a `PO` session updates `fr/po/` and related shared pages

Success criteria:
- durable learning is no longer trapped only in journals or chat
- every meaningful session compounds into the wiki

## Phase 4: Backfill the highest-value recurring knowledge

Objective: compile the most repeated and most useful patterns from existing materials.

High-priority initial pages:
- `fr/grammar/error-patterns/ce-que-ce-qui-dont.md`
- `fr/grammar/error-patterns/si-plus-que-parfait-conditionnel-passe.md`
- `fr/vocabulary/contrasts/journaliste-redacteur-en-chef-auditeur.md`
- `fr/vocabulary/themes/environnement.md`
- `fr/questions/qcm-distractor-patterns.md`
- `fr/sessions/milestones.md`

Success criteria:
- frequently reused knowledge is available as stable pages
- warm-up creation becomes easier because canonical pages exist

## Phase 5: Add global lint and maintenance

Objective: maintain the whole learning wiki, not only `PO`.

Checks:
- contradictions between profile/session/wiki pages
- recurring concepts mentioned in many places but lacking canonical pages
- stale pages superseded by newer sessions
- orphan pages with weak links
- durable chat clarifications not filed back into the wiki
- resolved error patterns still overrepresented in warm-ups

Success criteria:
- the wiki stays navigable, current, and non-duplicative
- maintenance happens across the whole learning system

## Canonical split: JSON vs markdown

JSON stays useful for:
- scores
- counts
- mastery levels
- review dates
- session IDs
- machine-readable tracking

Markdown wiki pages are canonical for:
- explanations
- contrasts
- reusable examples
- question patterns
- reading/listening traps
- session syntheses
- chat-derived clarifications
- cross-links across modules

## Operating rule for future sessions

After each important session, do not stop at the journal and JSON updates.
Always ask: what durable understanding from this session should become or update a canonical wiki page under `fr/`?
