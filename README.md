# Claudify-This

A Claude Code slash command that audits any repository's Claude Code setup and helps you add what's missing — like `/init` but smarter.

It examines your repo, checks for `CLAUDE.md`, slash commands, subagents, skills, settings, and MCP config, then offers to create or improve whatever is needed based on what your project actually does.

## Installation

Copy the command file into any repo's `.claude/commands/` directory:

```bash
mkdir -p .claude/commands
cp claudify-repo.md .claude/commands/claudify-repo.md
```

Or install it as a **user-level command** (available in all repos):

```bash
mkdir -p ~/.claude/commands
cp claudify-repo.md ~/.claude/commands/claudify-repo.md
```

Then run it inside Claude Code:

```
/claudify-repo
```

## What It Does

1. Examines the repo to understand its purpose, language, and structure
2. Audits existing Claude Code configuration elements
3. Presents findings and offers a menu of actions
4. Creates or improves elements based on your choice — tailored to the specific project

## Why Not Just `/init`?

`/init` creates a baseline `CLAUDE.md`. This command goes further:

- Audits **all** Claude Code elements, not just `CLAUDE.md`
- Reviews existing config for quality, not just presence
- Suggests only what's actually useful for your specific repo
- Lets you choose what to create rather than doing everything automatically
