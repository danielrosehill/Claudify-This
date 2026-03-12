Audit this repository's Claude Code setup and help the user improve it.

# Step 1: Understand the Repository

Briefly examine the repo's contents, language(s), and purpose so you can make informed suggestions.

# Step 2: Audit Claude Code Elements

Check for the existence and quality of each of these:

| Element | Path |
|---|---|
| Project instructions | `CLAUDE.md` |
| Slash commands | `.claude/commands/` |
| Subagents | `.claude/agents/` |
| Skills | `.claude/skills/` |
| Settings | `.claude/settings.json` |
| MCP config | `.mcp.json` |

For each element, note whether it exists and (if it does) briefly assess its quality.

# Step 3: Present Findings and Offer Options

Present a short summary, then a numbered menu. Example:

> I've reviewed the repository (a Python CLI tool for parsing logs). Here's what I found:
>
> - **CLAUDE.md** — missing
> - **Slash commands** — missing
> - **Subagents** — 2 found (looks good)
> - **Skills / Settings / MCP** — not configured
>
> What would you like me to do?
>
> 1. Create everything that's missing and review what exists
> 2. Just add what's missing (CLAUDE.md + slash commands)
> 3. Only review and improve what already exists
> 4. Something else

Wait for the user to choose before proceeding.

# Writing Guidance

- **Infer from context.** Base all suggestions on the actual repo contents — its language, structure, dependencies, and purpose.
- **Less is more.** Only create elements that provide genuine value. A small repo may only need a CLAUDE.md. Don't add slash commands or agents just for completeness.
- **CLAUDE.md essentials:** Include build/test/lint commands, project structure overview, key conventions, and anything a developer (or Claude) would need to be productive quickly.
- **Slash commands:** Focus on repetitive workflows specific to this project (e.g., `/deploy`, `/test`, `/lint`). Skip generic ones that Claude already handles well.
- **Subagents:** Only suggest these for complex, multi-step workflows where delegation genuinely helps.

Report what you created when done.