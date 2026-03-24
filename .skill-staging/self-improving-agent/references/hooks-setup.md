# Hooks Setup

Use hooks only if you want lightweight reminders to keep the learning loop active. The skill works fine without hooks.

## Codex Setup

Add a hook configuration to `.codex/settings.json` in the project or user config:

```json
{
  "hooks": {
    "UserPromptSubmit": [
      {
        "matcher": "",
        "hooks": [
          {
            "type": "command",
            "command": "/Users/kylepham/.codex/skills/self-improving-agent/scripts/activator.sh"
          }
        ]
      }
    ],
    "PostToolUse": [
      {
        "matcher": "Bash",
        "hooks": [
          {
            "type": "command",
            "command": "/Users/kylepham/.codex/skills/self-improving-agent/scripts/error-detector.sh"
          }
        ]
      }
    ]
  }
}
```

## Claude Code Setup

Use the same pattern in `.claude/settings.json` and adjust the script paths if the skill is installed elsewhere.

## Test the Hooks

Test the activator:

```bash
/Users/kylepham/.codex/skills/self-improving-agent/scripts/activator.sh
```

Test the error detector:

```bash
CLAUDE_TOOL_OUTPUT="Permission denied" /Users/kylepham/.codex/skills/self-improving-agent/scripts/error-detector.sh
```

## Keep Hook Output Small

- Use the activator for a short reminder, not a full tutorial.
- Use the error detector only as a prompt to log noteworthy failures.
- Disable either hook if the extra context feels noisy.
