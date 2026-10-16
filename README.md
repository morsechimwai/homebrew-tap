# homebrew-tap

Homebrew formulae by morsechimwai.

## agent-valley

Every Claude Code agent and sub-agent at a glance, in the notch of your Mac.

```sh
brew install morsechimwai/tap/agent-valley
```

Homebrew builds the app on your Mac from the source. Then open it:

```sh
open "$(brew --prefix)/opt/agent-valley/AgentValley.app"
```

Source: https://github.com/morsechimwai/agent-valley

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
