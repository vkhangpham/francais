# Errors

Capture command failures, tool failures, and unexpected runtime problems that future sessions should avoid repeating.

**Areas**: frontend | backend | infra | tests | docs | config | general
**Statuses**: pending | in_progress | resolved | wont_fix | promoted

## Entry Template

````markdown
## [ERR-YYYYMMDD-001] command-or-tool-name

**Logged**: 2026-03-24T09:00:00Z
**Priority**: high
**Status**: pending
**Area**: general

### Summary
Short description of what failed

### Error
```text
Paste the most useful error text here
```

### Context
- Command or operation attempted
- Inputs or parameters used
- Environment details if they mattered

### Suggested Fix
Best next step, workaround, or prevention rule

### Metadata
- Reproducible: yes | no | unknown
- Related Files: path/to/file.ext
- See Also: ERR-YYYYMMDD-000

---
````

## Resolution Block

```markdown
### Resolution
- **Resolved**: 2026-03-24T10:00:00Z
- **Commit/PR**: abc123 or #42
- **Notes**: Brief description of what changed
```

## [ERR-20260324-001] beads-dolt-sandbox-connectivity

**Logged**: 2026-03-24T16:41:00Z
**Priority**: high
**Status**: resolved
**Area**: infra

### Summary
Some Beads commands fail in the sandbox because Dolt server startup and port binding are unreliable there, even when the repo tracker itself is valid.

### Error
```text
failed to open database: Dolt server unreachable ...
allocating ephemeral port: listen tcp 127.0.0.1:0: bind: operation not permitted
```

### Context
- `bd ready` sometimes worked while `bd list` and `bd create` failed
- repo-local helper commands were trying to use a stale or unreachable Dolt server path
- out-of-sandbox `bd` commands were able to recover normal Beads access

### Suggested Fix
Use `tools/bd-local` first, but if Dolt or port errors appear in the sandbox, rerun Beads commands outside the sandbox with the approved `bd` prefixes.

### Resolution
- **Resolved**: 2026-03-24T16:41:00Z
- **Notes**: Fixed `tools/bd-local`, documented the recovery rule in repo guidance, and approved outside-sandbox `bd list`, `bd update`, and `bd close`.
