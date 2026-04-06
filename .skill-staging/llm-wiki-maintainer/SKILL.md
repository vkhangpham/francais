---
name: llm-wiki-maintainer
description: Build and maintain a persistent markdown wiki on top of raw sources. Use when knowledge should compound across sessions instead of being rediscovered from scratch: study notes, PO scripts, fetched web pages, extracted PDFs, research dossiers, or any other source-backed domain.
---

# LLM Wiki Maintainer

Use this skill when the user wants a persistent, compounding knowledge base instead of one-off answers.

The pattern has three layers:

1. `raw/` = immutable source material
2. `wiki/` = LLM-maintained markdown pages
3. `schema` = instructions for how ingestion, querying, and maintenance work

The exact directory names can vary by project, but the architecture should stay the same.

## Trigger

Use when:
- the user wants to build a personal database, wiki, vault, dossier, or knowledge base
- the same topic will be revisited across many sessions
- sources come from chats, web pages, PDFs, notes, transcripts, books, or files
- answers should be filed back into durable notes instead of disappearing in chat
- retrieval alone would force the agent to rediscover the same synthesis repeatedly

Examples:
- `PO` speaking scripts and scenario banks
- `VOC` lesson banks with source-backed pages
- `CE` or `CO` source summaries and trap-pattern pages
- extracted textbook or PDF knowledge bases
- web research dossiers
- personal study or planning wikis

## Core rules

- Raw sources are immutable after capture except for obvious metadata fixes.
- The wiki is maintained by the LLM and may update many pages per ingest.
- The schema defines conventions, page types, naming, and operations.
- Useful answers should be filed back into the wiki when they create durable value.
- Cross-links matter; avoid isolated notes when synthesis or reuse is possible.
- Keep `index.md` and `log.md` current.
- Periodically lint the wiki for contradictions, stale pages, orphan pages, duplicate concepts, and missing cross-references.

## Recommended structure

A minimal instance usually includes:

- `schema.md`
- `index.md`
- `log.md`
- `raw/`
- one or more wiki page folders such as `profile/`, `entities/`, `concepts/`, `topics/`, `scenarios/`, `sources/`, `reviews/`

Adapt names to the domain. Do not force unnecessary complexity.

## Bundled resources

- `references/schema-template.md` = starter schema for a new wiki instance
- `references/operations-checklist.md` = compact ingest/query/lint checklist

## Operation 1: ingest

Treat every new source as an ingest event.

Typical flow:
1. identify the source and preserve it under `raw/`
2. add minimal metadata: date, source type, provenance, status
3. read the source and discuss key takeaways with the user if useful
4. update or create the relevant wiki pages
5. update `index.md`
6. append a dated entry to `log.md`
7. if the session produced a durable synthesis, save that synthesis as a wiki page too

One source may update many pages. That is expected.

## Operation 2: query

When answering questions against the wiki:
1. read `index.md` first
2. identify relevant linked pages
3. synthesize from the wiki, not from memory alone
4. cite or mention the relevant pages and raw sources when helpful
5. if the answer creates durable new structure, file it back into the wiki

Good examples of file-back outputs:
- a comparison page
- a synthesis page
- a reusable checklist
- a distilled phrase bank
- a contradiction or open-question page

## Operation 3: lint

Run periodic maintenance passes.

Look for:
- contradictions between pages
- stale claims superseded by newer sources
- orphan pages with no inbound links
- concepts mentioned repeatedly but lacking their own page
- duplicate pages that should merge
- missing source provenance
- missing follow-up questions or gaps worth researching

Record the outcome in `log.md` and optionally in a dedicated `reviews/` page.

## Page-writing guidance

For most wiki pages:
- start with purpose and scope
- link to key related pages
- separate stable facts from drafting choices or open questions
- keep pages reusable, not overfit to one chat turn
- prefer structured headings over giant prose blocks

## Minimal metadata guidance

Use lightweight frontmatter or a compact header when useful:
- title
- status
- updated
- source links
- tags
- related pages

Do not overdesign metadata if the wiki is still small.
As a default minimum, prefer at least: `title`, `status`, `updated`, and `related pages` or source links.

## Domain adaptation

Before building a new wiki instance, decide:
- what counts as a raw source
- what page types matter
- what should be indexed
- what should be logged chronologically
- what lint checks matter most

Document those decisions in `schema.md` for that wiki instance.

## Success criteria

A healthy wiki instance should:
- make later sessions faster and less repetitive
- preserve useful synthesis beyond chat history
- accumulate reusable structure over time
- stay navigable via `index.md`
- stay auditable via `log.md`
- improve after each ingest instead of becoming a junk drawer
