# PO Wiki Schema

## Purpose

This wiki supports French `PO` preparation in this repo.
Its job is to maintain a persistent, highly personal speaking knowledge base that improves with every interview, script revision, source ingest, and follow-up question.

In scope:
- interview notes about Kyle's real situation, preferences, and speaking style
- TCF or study prompts that can generate reusable speaking material
- personal scripts, cue cards, skeletons, and follow-up questions
- phrase banks, reusable anecdotes, and topic cross-links
- reusable Part 3 opinion/debate infrastructure: answer formats, archetypes, sentence structures, rhetorical moves, connectors, and thematic vocabulary
- teacher feedback or future corrections when available

Out of scope:
- long live roleplay pretending to be a teacher
- replacing real oral practice
- storing fabricated personal facts as if they were true

## Layers

### 1. Raw sources

Store immutable source material under `po/raw/`.
Examples:
- interview notes
- prompt captures
- teacher feedback
- transcript excerpts
- older drafts worth preserving

Raw notes should be kept as historical inputs. If a fact changes, add a newer source note instead of silently rewriting history.

### 2. Wiki pages

Main page families:
- `profile/` = stable personal speaking profile and constraints
- `entities/` = reusable real-life domains like work, studies, hobbies, future plans
- `concepts/` = speaking functions like self-introduction, narration, comparison, opinion
- `scenarios/` = deliverables for concrete PO tasks
- `frameworks/` = reusable response formats and rhetorical scaffolds, especially for Part 3
- `reviews/` = lint results, contradictions, stale content, missing coverage

### 3. Schema rules

The agent must:
- read the relevant wiki pages before a new PO session
- interview Kyle before drafting a scenario unless the wiki already has enough detail
- capture the interview as a raw source note when the session produces durable new facts or framing
- update all relevant pages, not just the final scenario page
- update `index.md` and `log.md` on each meaningful ingest
- file useful final outputs back into the wiki

## Required output shape for a mature scenario

A strong scenario page should usually contain:
- purpose
- linked raw sources
- linked profile/entities/concepts
- `core` version
- `natural` version
- `cue card`
- `skeleton`
- likely follow-up questions
- known risks or wording traps
- reuse notes for other topics

## Operations

### Ingest

When Kyle asks for a PO topic:
1. identify whether this is a new topic or a revision of an existing one
2. read `index.md`, `profile/speaker_profile.md`, and relevant pages
3. interview Kyle to gather missing personal detail
4. save a source note if new durable information appeared
5. update the relevant scenario and linked pages
6. update `index.md`
7. append a log entry to `log.md`

### Query

Typical query examples:
- make me a 45-second version of my self-introduction
- reuse my work story for a motivation topic
- show my safe connectors for opinion tasks
- combine future plans and French-learning motivation
- give me a Part 3 answer framework for advantages/disadvantages
- show my reusable rhetorical moves for nuanced opinion answers

Answer from the wiki first. If a useful comparison or synthesis is created, save it back into the wiki.

### Lint

Review periodically for:
- contradictory personal facts
- stale scripts that no longer match reality
- duplicate anecdotes across scenarios
- missing links between scenarios and profile/entities
- pages missing `core`, `cue card`, or `skeleton`
- reusable phrases trapped in only one page
- weak coverage of Part 3 structures, connectors, or rhetorical archetypes
