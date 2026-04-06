# Global French Wiki Schema

## Purpose

This wiki supports the entire French learning workspace, not only `PO`.
Its job is to maintain a persistent, highly reusable knowledge base that improves with every session, question, correction, source ingest, and follow-up clarification.

In scope:
- chat-derived clarifications worth preserving
- session syntheses and milestone knowledge
- vocabulary contrasts, phrase banks, theme pages, and real-world referent explanations
- grammar rules, error patterns, and Kyle-specific failure modes
- `CE` question types, distractor patterns, reading traps, and source digests
- `CO` listening traps, source digests, and question patterns
- `PO` scenarios, frameworks, concept pages, and reusable speaking infrastructure
- learning-profile preferences, weak points, and study constraints
- teacher feedback, textbook extracts, and durable review notes

Out of scope:
- storing fabricated facts as if they were true
- leaving durable knowledge trapped only in chat if it should be reusable later
- replacing the event log role of `sessions/` or the machine-readable role of the JSON trackers

## Layers

### 1. Raw sources

Store immutable or minimally edited source material under `fr/raw/`.
Examples:
- chat extracts
- session source notes
- textbook excerpts or OCR extracts
- prompt captures
- question sets
- teacher feedback
- transcript excerpts
- notable failed attempts worth preserving

If reality or understanding changes, add a newer source note instead of silently rewriting historical input.

### 2. Wiki pages

Main page families:
- `profile/` = learner profile, preferences, and stable constraints
- `vocabulary/` = themes, contrasts, phrase banks, and conceptual explanations
- `grammar/` = rule pages, contrasts, and error-pattern pages
- `ce/` = comprehension ecrite patterns, source digests, and trap pages
- `co/` = comprehension orale patterns, source digests, and trap pages
- `po/` = speaking frameworks, scenarios, and concept pages
- `sessions/` = compiled milestones and cross-session syntheses
- `questions/` = reusable question archetypes, distractor families, and reviewed mistakes
- `reviews/` = lint findings, contradictions, stale content, and migration notes

### 3. Schema rules

The agent must:
- read `fr/index.md` before answering from the wiki
- update canonical pages when a session produces durable new understanding
- treat chats, sessions, exercises, and corrections as possible ingest events
- keep `index.md` and `log.md` current on meaningful ingests
- preserve raw provenance when a durable fact, example, or explanation comes from a concrete source
- use the JSON trackers as support infrastructure, not as the only durable memory layer

## Canonical split

JSON files remain useful for:
- scores
- counts
- mastery levels
- review dates
- session IDs
- machine-readable progress tracking

Markdown wiki pages are canonical for:
- explanations
- contrasts
- reusable examples
- source syntheses
- trap patterns
- session-level learning that should compound
- chat-derived clarifications
- cross-links between modules

## Operations

### Ingest

When a French-learning event produces durable value:
1. preserve or update the event record first (`sessions/`, `po/`, or another source artifact)
2. update the machine-readable trackers when justified
3. preserve raw provenance under `fr/raw/` when useful
4. update the relevant canonical page(s) under `fr/`
5. update `fr/index.md` if the page set changed
6. append a dated entry to `fr/log.md`

This is the Phase 3 dual-write rule: important sessions should update both the event/tracker layer and the compiled wiki layer.

### Query

Typical query examples:
- what are Kyle's active grammar weak points right now?
- show the canonical page for `ce que / ce qui / dont`
- what lexical contrasts around media have already been stabilized?
- what `CE` distractor patterns keep appearing?
- what durable clarifications from recent chats should influence the next session?

Answer from the wiki first. If a useful comparison or synthesis is created, file it back into the wiki.

### Lint

Review periodically for:
- contradictions between pages and trackers
- stale canonical pages superseded by newer sessions
- repeated concepts lacking their own page
- orphan pages with weak links
- durable chat clarifications that were never filed back
- error patterns that are over- or under-represented in warm-ups
- useful knowledge still trapped only in session journals or JSON notes
