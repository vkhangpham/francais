# Troubleshooting

## If `bd` Says No Database Exists

Initialize Beads:

```bash
bd init --stealth --skip-agents --skip-hooks -p fr
```

## If `bd` Cannot Start or Reach the Dolt Server

In this workspace, one observed failure mode is:

- Beads starts a Dolt server successfully
- later commands lose the saved port
- auto-start tries to launch a second server
- the second server fails because the database is already locked by the first one

Symptom examples:

- `failed to open database`
- `server started ... but not accepting connections`
- `database "dolt" is locked by another dolt process`

Practical recovery:

1. Inspect `.beads/dolt-server.log`.
2. Find the first successful `Server ready. Accepting connections.` line and note the port.
3. Re-run the command with that port exported:

```bash
BEADS_DOLT_SERVER_PORT=<port> bd list --json
```

Observed working port for this workspace bootstrap session: `59536`.

Avoid re-running `bd init` unless the database is genuinely missing.

## Sources

- [Beads README](https://raw.githubusercontent.com/steveyegge/beads/main/README.md)
- Local workspace logs at `.beads/dolt-server.log`
