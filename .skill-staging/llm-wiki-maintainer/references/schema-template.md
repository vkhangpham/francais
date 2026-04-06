# Wiki Schema Template

Use this as a starting point for any new wiki instance.

## Purpose
- What domain does this wiki cover?
- What is in scope?
- What is out of scope?

## Layers
### Raw sources
- What counts as an immutable source?
- Where are sources stored?
- How are they named?

### Wiki pages
- Which folders exist?
- What page types exist?
- Which pages are canonical?

### Schema rules
- How should the agent ingest a source?
- How should the agent answer queries?
- How should the agent lint the wiki?

## Naming conventions
- file naming rules
- date formats
- source-note naming rules
- page title style

## Ingest workflow
1. capture source
2. create or update wiki pages
3. update index
4. append log entry
5. note open questions or follow-up actions

## Query workflow
1. read index
2. inspect relevant pages
3. answer with references
4. file back durable outputs when warranted

## Lint workflow
- contradictions
- stale claims
- duplicate pages
- missing links
- missing provenance
- missing coverage

## Page templates
Define the standard sections for the main page types in this wiki.
