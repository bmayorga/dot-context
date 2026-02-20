---
last_updated: 2026-02-19T22:00:00-05:00
updated_by: human
---

# Architecture

## Design Principles

1. **Plain text first** — Markdown readable by humans and AI without preprocessing
2. **Additive** — adding `.context/` changes nothing else in the project
3. **Composable** — works alongside AGENTS.md and README.md, not instead of them
4. **AI-writable** — agents can update files without human approval of format

## File Roles

```
.context/
├── STATUS.md       ← Most volatile; updated every AI session
├── SPECS.md        ← Stable; updated when requirements change
├── SOW.md          ← Very stable; updated at major milestones
├── ARCHITECTURE.md ← Stable; updated on architectural decisions
└── CHANGES.md      ← Append-only; never edited, only appended
```

## Integration Design

```
AGENTS.md
  └── instructs AI to read ──→ .context/*.md
                                  └── AI updates after each session
```

AGENTS.md contains the instructions. `.context/` holds the knowledge. They are separate concerns.

## Key Decisions

| Decision | Rationale |
|----------|-----------|
| Markdown only (no JSON body) | Readable without tools; AI handles it natively |
| Optional YAML frontmatter | Machine-readable when needed, optional when not |
| Uppercase filenames (STATUS.md) | Consistent with README.md, AGENTS.md convention |
| `.context/` dotfolder | Hidden by default, clear purpose; follows .github/ pattern |
| MIT license | Maximum adoption; no friction for any use case |
