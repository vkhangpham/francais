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

## [ERR-20260325-001] glm-ocr-local-runtime-on-apple-silicon

**Logged**: 2026-03-25T07:20:00Z
**Priority**: high
**Status**: in_progress
**Area**: general

### Summary
Two local `GLM-OCR` hosting paths were set up successfully, but both failed at runtime on an Apple M2 Pro during real OCR inference.

### Error
```text
Ollama path:
GGML_ASSERT([rsets->data count] == 0) failed

mlx-vlm path:
UnicodeDecodeError: 'utf-8' codec can't decode bytes ... in mlx_vlm/tokenizer_utils.py
```

### Context
- `ollama` was upgraded to `0.18.2`, `glm-ocr:latest` was pulled successfully, and the server was moved into tmux session `servers`
- direct OCR calls through Ollama still crashed on image inference even though the model loaded
- `mlx_vlm.server --trust-remote-code` in `tmux` session `servers` loaded `mlx-community/GLM-OCR-bf16` successfully and passed a text-only health check
- real image OCR requests then failed with a tokenizer decode error, and the GLM-OCR SDK surfaced the same `500` response

### Suggested Fix
Before retrying local GLM-OCR, check for an upstream fix in `mlx-vlm` and Ollama compatibility notes for `glm-ocr`; keep `tesseract` or direct text extraction as the current fallback.

### Metadata
- Reproducible: yes
- Related Files: /tmp/glm_ocr_test/ollama-config.yaml, /tmp/glm_ocr_test/mlx-config.yaml

### Resolution
- **Resolved**: 2026-03-25T08:10:00Z
- **Notes**: The `mlx-vlm` path stopped returning HTTP `500` after patching `BPEStreamingDetokenizer.add_token()` in the local venv to decode with `errors="replace"`, matching the direction in upstream issue `Blaizzy/mlx-vlm#837`, issue `#851`, and closed PR `#836`. `GLM-OCR` now returns text for real images, but output quality is still noisy, so OCR quality work remains open.

## [ERR-20260326-001] shell-backticks-in-bd-description

**Logged**: 2026-03-26T09:22:00+07:00
**Priority**: medium
**Status**: resolved
**Area**: general

### Summary
Using backticks inside a double-quoted shell argument for a `bd create` description triggered unintended command substitution in `zsh`.

### Error
```text
zsh:1: command not found: close
```

### Context
- A Beads task was being created to record the standardized session close-out workflow.
- The description contained the phrase `close the session` wrapped in backticks inside a double-quoted command argument.
- `zsh` interpreted the backticks before running `./tools/bd-local create`.

### Suggested Fix
Avoid backticks inside double-quoted shell arguments; prefer single-quoted strings or escaped backticks when passing Beads descriptions through the shell.

### Resolution
- **Resolved**: 2026-03-26T09:22:00+07:00
- **Notes**: Updated the Beads issue description with safe quoting and closed the task successfully.

## [ERR-20260331-001] stale-github-token-in-origin-url

**Logged**: 2026-03-31T18:02:00+07:00
**Priority**: high
**Status**: resolved
**Area**: infra

### Summary
Git pushes can fail in this repo even when `gh auth status` is healthy if `origin` contains an old personal access token embedded directly in the remote URL.

### Error
```text
remote: Invalid username or token. Password authentication is not supported for Git operations.
fatal: Authentication failed for 'https://github.com/vkhangpham/francais.git/'
```

### Context
- `gh auth status` showed an active authenticated session for `vkhangpham` with `repo` scope.
- `git remote get-url origin` still returned an HTTPS URL containing an older `ghp_...` token.
- Git tried the stale embedded credential before the valid keychain-backed `gh` authentication, so `git push --force-with-lease origin master` failed until the remote was cleaned.

### Suggested Fix
Prefer a clean remote URL like `https://github.com/<owner>/<repo>.git` and run `gh auth setup-git` so Git uses the current keychain-backed GitHub credentials instead of a stale token embedded in `.git/config`.

### Resolution
- **Resolved**: 2026-03-31T18:02:00+07:00
- **Notes**: Replaced the `origin` URL with the clean GitHub HTTPS URL, ran `gh auth setup-git`, then pushed successfully with `--force-with-lease`.
