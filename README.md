# .context/ Standard

**A lightweight, AI-first project context convention.**

Proposed by [Byron Mayorga](https://github.com/byronmayorga) · [Intelgi.com](https://intelgi.com)

---

## What is `.context/`?

`.context/` is a folder at the root of any project. It holds a small set of Markdown files
describing your project's current state, scope, requirements, and architecture.

Its primary purpose is **context persistence between AI assistant sessions** — so any AI agent
(Cursor, Claude, Copilot, Codex, etc.) can resume work on your project without you re-explaining
everything from scratch.

It doubles as **lightweight living documentation**, mostly maintained by AI, that can later be
promoted to formal docs.

.context is a representation of the current state of the project, not a record of everything that happened during its evolution.

## Why not just AGENTS.md?

`AGENTS.md` is great for giving AI agents coding instructions (style, commands, rules).
`.context/` is complementary: it holds *project knowledge* — what you're building, current status,
decisions made. They work best together.

See [Integration with AGENTS.md](#integration-with-agentsmd).

## File Structure

```
your-project/
├── AGENTS.md           ← AI coding instructions → references .context/
└── .context/
    ├── STATUS.md       ← current phase, blockers, next actions  [REQUIRED]
    ├── SPECS.md        ← requirements and acceptance criteria
    ├── SOW.md          ← scope, milestones, deliverables
    ├── ARCHITECTURE.md ← tech stack, diagrams, key decisions
    └── CHANGES.md      ← append-only log (AI-updated)
```

Only `STATUS.md` is required. All others are optional but recommended for non-trivial projects.

## Quick Start

```bash
mkdir .context
curl -o .context/STATUS.md https://raw.githubusercontent.com/byronmayorga/dot-context/main/templates/STATUS.md
```

Or copy the [templates](./templates/) manually and fill them in.

## Integration with AGENTS.md

Add this block to your existing `AGENTS.md`:

```markdown
## Project Context

This project uses the `.context/` standard. Before making any changes:

1. Read `.context/STATUS.md` — current state and blockers
2. Read `.context/SPECS.md` — requirements and acceptance criteria
3. Read `.context/SOW.md` — scope and what is out of scope
4. Read `.context/ARCHITECTURE.md` — tech stack and key decisions

After completing any significant task:
- Update `.context/STATUS.md` (mark done items, update next actions, note new blockers)
- Append one line to `.context/CHANGES.md`: `YYYY-MM-DD | [tool-name] | description`
```

## Standard Files

| File | Required | Purpose | Updated by |
|------|----------|---------|------------|
| `STATUS.md` | ✅ | Current phase, blockers, next steps | AI after each session |
| `SPECS.md` | Recommended | Requirements, acceptance criteria | Human + AI |
| `SOW.md` | Recommended | Scope, milestones, out-of-scope | Human |
| `ARCHITECTURE.md` | Optional | Stack, diagrams, decisions | Human + AI |
| `CHANGES.md` | Optional | Append-only session log | AI (append only) |

You may add custom files following the same convention: `DEPLOY.md`, `METRICS.md`, `SECURITY.md`, etc.

## AI Session Workflow

**Start of session:**
> "Read AGENTS.md and all files in .context/. Summarize the current status and tell me the next priorities."

**End of session:**
> "Update STATUS.md with what we accomplished. Append a summary line to CHANGES.md with today's date."

## Examples

- [Laravel SaaS](./examples/laravel-saas/)
- [Next.js App](./examples/nextjs-app/)

## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md). All feedback welcome — open an issue or PR.

## License

MIT · Byron Mayorga · [Intelgi.com](https://www.intelgi.com)
