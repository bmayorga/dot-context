# .context/ Standard — Specification v0.1

**Author:** Byron Mayorga  
**Organization:** [Intelgi.com](https://intelgi.com)  
**Status:** Proposal — Feedback welcome  
**License:** MIT  
**Date:** 2026-02-19  

---

## Motivation

Modern software development increasingly relies on AI coding assistants. These tools lack
persistent memory across sessions, forcing developers to re-explain project context repeatedly.

Existing solutions like `AGENTS.md` focus on *how* an AI should code (style, commands, rules).
There is no widely adopted convention for *what* is being built — the current state, decisions
made, and work remaining.

`.context/` fills this gap: a dedicated folder for project knowledge, designed to be read and
updated by AI agents without any special tooling.

## Goals

- Persist project context across AI sessions without extra tooling
- Provide lightweight documentation maintained mostly by AI
- Be human-readable and human-editable
- Work with any AI coding tool (Cursor, Claude Code, Copilot, Codex, etc.)
- Complement `AGENTS.md`, not replace it

## Non-goals

- Not a replacement for formal documentation (wikis, Confluence, Notion)
- Not a task manager or issue tracker
- Not a binary or structured-only format — plain Markdown is intentional
- Not tool-specific

## Folder Location

The `.context/` folder MUST be placed at the root of the repository or project directory.

For monorepos, each sub-project MAY have its own `.context/` folder. The root `.context/`
should hold system-wide context; sub-project folders hold specific context.

## Required Files

### STATUS.md (Required)

The primary file. Tracks current state. AI agents SHOULD read this first and update it last.

Recommended structure:

```markdown
---
last_updated: YYYY-MM-DDTHH:MM:SSZ
updated_by: [human | ai-tool-name]
phase: [planning | development | testing | production]
blockers: [integer]
---

# Status

## Current Phase
[Description]

## Done
- [x] Completed item

## In Progress
- [ ] Active item

## Next Actions
1. Highest priority
2. Second priority

## Blockers
- [Description or "None"]

## Known Issues
- [Description or "None"]
```

## Optional Files

### SPECS.md (Recommended)

Requirements and acceptance criteria. Use Given-When-Then or simple bullet lists.

### SOW.md (Recommended)

Statement of Work: objective, scope, explicitly out-of-scope items, milestones, deliverables.
The out-of-scope section is especially valuable — it prevents scope creep during AI sessions.

### ARCHITECTURE.md (Optional)

Tech stack, architectural decisions, dependency list. Mermaid diagrams are recommended.

### CHANGES.md (Optional)

Append-only session log. AI agents MUST append, never edit existing entries.

Format per line: `YYYY-MM-DD | [agent/human] | description`

## Custom Files

Projects MAY add custom files following the `FILENAME.md` naming convention (uppercase, `.md`).

Examples: `DEPLOY.md`, `METRICS.md`, `INTEGRATIONS.md`, `SECURITY.md`

## Frontmatter

Files SHOULD include YAML frontmatter for machine-readable metadata. The `last_updated` and
`updated_by` fields are especially useful for tooling and validation.

## Integration with AGENTS.md

Projects using `.context/` SHOULD reference it in `AGENTS.md` using a dedicated "Project Context"
section. See the [README](./README.md#integration-with-agentsmd) for a ready-to-use snippet.

## Versioning

This specification follows semver. This is `v0.1` — an initial proposal open to community
feedback. Breaking changes to the file schema will bump the major version.

## Changelog

| Version | Date | Description |
|---------|------|-------------|
| 0.1 | 2026-02-19 | Initial proposal — Byron Mayorga / Intelgi.com |
