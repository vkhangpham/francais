# Learnings

Capture corrections, knowledge gaps, and best practices discovered during work.

**Categories**: correction | knowledge_gap | best_practice | insight
**Areas**: frontend | backend | infra | tests | docs | config | general
**Statuses**: pending | in_progress | resolved | wont_fix | promoted | promoted_to_skill

## Entry Template

```markdown
## [LRN-YYYYMMDD-001] best_practice

**Logged**: 2026-03-24T09:00:00Z
**Priority**: medium
**Status**: pending
**Area**: general

### Summary
One-line description of the learning

### Details
What happened, what was wrong, and what is now understood

### Suggested Action
Concrete prevention rule or improvement to apply next time

### Metadata
- Source: conversation | error | user_feedback | docs
- Related Files: path/to/file.ext
- Tags: tag1, tag2
- See Also: LRN-YYYYMMDD-000
- Pattern-Key: simplify.dead-code
- Recurrence-Count: 1
- First-Seen: 2026-03-24
- Last-Seen: 2026-03-24

---
```

## Resolution Block

Add after `Metadata` when the issue is fixed or promoted:

```markdown
### Resolution
- **Resolved**: 2026-03-24T10:00:00Z
- **Commit/PR**: abc123 or #42
- **Notes**: Brief description of what changed
```

## Promotion Block

Use when the learning becomes durable agent guidance:

```markdown
**Status**: promoted
**Promoted**: AGENTS.md
```

Use when extracting a reusable skill:

```markdown
**Status**: promoted_to_skill
**Skill-Path**: /absolute/path/to/skill
```
