# homebrew-tap

Homebrew formulae by morsechimwai.

## ccstatus

Fast Claude Code status line with cached usage bars.

```sh
brew install morsechimwai/tap/ccstatus
```

Then point your Claude Code status line at it in `~/.claude/settings.json`:

```json
"statusLine": { "type": "command", "command": "ccstatus", "padding": 1 }
```

Source: https://github.com/morsechimwai/claude-status-line
