---
name: tcf-po-session
description: Run a TCF-aligned PO preparation session for this repo. Use when the selected module is PO and the goal is to interview Kyle, ingest the results into the PO wiki, and produce personal speaking artifacts such as scripts, cue cards, and skeletons rather than long live oral roleplay.
---

# TCF PO Session

Use this skill for module `PO` in this workspace.

This skill is a domain-specific instance of the broader `llm-wiki-maintainer` pattern. The goal is not live oral simulation. The goal is to build and maintain a persistent, personal speaking wiki that produces rehearseable outputs.

## Trigger

Use when:
- Kyle starts `/learn-fr` and chooses `PO`
- Kyle asks for a speech, scenario, or speaking scaffold to rehearse aloud by himself
- a new speaking topic should be added to the PO wiki
- an existing PO page should be revised using new personal detail or teacher feedback
- Kyle wants to prepare TCF Part 3 through reusable frameworks, not just one-off answers

## Mandatory pre-read

Before drafting:
1. Read `po/schema.md`
2. Read `po/index.md`
3. Read `po/profile/speaker_profile.md`
4. Read `po/profile/personal_facts.md` and `po/profile/quirks_and_style.md`
5. Read any relevant `po/scenarios/*.md`, `po/concepts/*.md`, `po/frameworks/*.md`, or `po/entities/*.md`
6. If the task touches general study context, also read `PROGRESSION_GLOBALE.md`
7. If present, review `.learnings/LEARNINGS.md`, `.learnings/ERRORS.md`, `.learnings/FEATURE_REQUESTS.md`
8. Check `./tools/bd-local ready --plain` before choosing major follow-up work

## Session model

Treat each PO session as an `ingest` event.

The default loop is:
1. inspect the existing wiki state
2. interview Kyle to gather missing personal detail
3. preserve new durable source material under `po/raw/`
4. update relevant wiki pages
5. produce the speaking artifact
6. file the final useful output back into the wiki
7. update `po/index.md` if the page set changed
8. append `po/log.md`

For difficult Part 3 work, the speaking artifact may be a reusable framework rather than one finalized script: answer formats, archetypes, rhetorical moves, connector banks, and sentence structures.
Framework-first sessions still count as real ingests and should update `po/log.md`, any touched concept/profile/framework page, and `po/index.md` when the page set changes.

## Interview priorities

Gather only what is needed for a believable, reusable answer:
- true personal facts
- preferred tone
- target length
- what Kyle wants to emphasize or avoid
- what feels authentic enough to memorize
- known grammar or phrasing comfort zone

## Required output package

Minimum usable scenario package:
- `core` version
- `natural` version
- `cue card`
- `skeleton`

Mature scenario package should also include when relevant:
- stretch version
- follow-up questions
- known risks or wording traps
- reuse notes for other topics
- safe substitutions
- repair phrases or panic version

## Page update rule

Do not only edit the scenario page.

Also update whatever else is affected:
- `profile/` for durable preferences or facts
- `concepts/` for reusable structures
- `entities/` for reusable life domains
- `frameworks/` for Part 3 answer patterns, rhetorical templates, and connector banks
- `reviews/` if contradictions or gaps are discovered

## Pitfalls

Avoid:
- writing a generic textbook speech without interviewing first
- pretending to know personal facts that were never confirmed
- leaving useful refinements trapped only in chat
- doing long roleplay instead of producing rehearseable material
- treating each new topic as isolated when it can reuse prior pages

## Success criteria

A strong PO session leaves behind:
- an updated PO wiki
- a more accurate picture of Kyle's reusable speaking material
- one or more speaking outputs that feel personal and sayable out loud
- stronger reusable infrastructure for Part 3 when the topic is argumentative or opinion-based
- better future reuse because the knowledge is now filed, linked, and persistent
