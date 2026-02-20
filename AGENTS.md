# AGENTS.md

This repository proposes the `.context/` standard for AI-first project documentation.

## Project Context

This project uses the `.context/` standard. Before making any changes:

1. Read `.context/STATUS.md` — current state and priorities
2. Read `.context/SPECS.md` — goals and success criteria
3. Read `.context/SOW.md` — scope of the proposal

After completing any significant task:
- Update `.context/STATUS.md` with progress and next actions
- Append one line to `.context/CHANGES.md` (format: `YYYY-MM-DD | ai | description`)

## Coding Guidelines

- All documentation in English
- Markdown files inside `.context/` use uppercase names (STATUS.md, SPECS.md, etc.)
- Keep the spec simple — resist scope creep
- Examples must use realistic, runnable content

## Repository Structure

```
.
├── AGENTS.md           ← You are here
├── SPEC.md             ← The formal specification
├── README.md           ← Introduction and quick start
├── CONTRIBUTING.md     ← How to contribute
├── LICENSE             ← MIT
├── .context/           ← This repo's own context files
├── templates/          ← Copy-paste templates for each standard file
└── examples/           ← Real-world usage examples by stack
```
