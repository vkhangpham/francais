# Entry Formats

Use these examples when a blank template is not enough.

## Learning Example

```markdown
## [LRN-20260324-001] knowledge_gap

**Logged**: 2026-03-24T09:30:00Z
**Priority**: medium
**Status**: pending
**Area**: config

### Summary
Project uses `pnpm`, not `npm`

### Details
Attempted `npm install`, but the repository uses a `pnpm-lock.yaml` workflow.
Using the wrong package manager risks lockfile drift and install failures.

### Suggested Action
Check for `pnpm-lock.yaml` or `pnpm-workspace.yaml` before assuming `npm`.

### Metadata
- Source: error
- Related Files: pnpm-lock.yaml
- Tags: package-manager, pnpm

---
```

## Error Example

````markdown
## [ERR-20260324-001] docker-build

**Logged**: 2026-03-24T10:00:00Z
**Priority**: high
**Status**: pending
**Area**: infra

### Summary
Docker build fails on Apple Silicon due to platform mismatch

### Error
```text
error: failed to solve: no match for platform linux/arm64
```

### Context
- Command: `docker build -t myapp .`
- Running on Apple Silicon

### Suggested Fix
Use `--platform linux/amd64` or update the Dockerfile to set the platform explicitly.

### Metadata
- Reproducible: yes
- Related Files: Dockerfile

---
````

## Feature Request Example

```markdown
## [FEAT-20260324-001] export-to-csv

**Logged**: 2026-03-24T10:15:00Z
**Priority**: medium
**Status**: pending
**Area**: backend

### Requested Capability
Export analysis results to CSV

### User Context
The user needs a spreadsheet-friendly output for recurring reporting.

### Complexity Estimate
simple

### Suggested Implementation
Add `--output csv` beside the existing JSON output path.

### Metadata
- Frequency: recurring
- Related Features: output-json

---
```

## Field Guidance

- Keep `Summary` to one line.
- Put durable prevention rules in `Suggested Action` or `Suggested Fix`.
- Prefer stable `Pattern-Key` values for recurring issues, such as `deps.package-manager` or `tests.fixture-scope`.
- Add `See Also` instead of duplicating large amounts of context.
