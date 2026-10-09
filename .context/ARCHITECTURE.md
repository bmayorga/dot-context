# Architecture

> **How this file works:** This owns the proposal repository's structure and design rationale. Read it when changing document responsibilities or integration. Update after material design changes; SPEC.md governs the proposed standard and actual repository files establish what is present. SPECS.md owns goals, SOW.md owns scope, and CHANGES.md owns milestones.

## Design Principles

- Plain Markdown: human-readable without preprocessing or mandatory tooling.
- Scoped reading: discovery and status first, then relevant knowledge.
- One owner per subject: link instead of copying facts.
- Current references, active plans, and historical evidence have distinct roles.
- Visible instructions make each context document maintainable.
- Project-neutral templates and examples avoid source-project details.

## Structure and Boundaries

SPEC.md defines the standard. The public README explains adoption. Templates provide
copyable starting points. Minimal and growing examples demonstrate how the document set scales.
AGENTS.md routes contributors through this repository's context protocol. Configuration and
full maintenance rules live in .context/README.md so customized agent instructions require
only a small integration block.

## Decisions

| Decision | Rationale |
|---|---|
| README.md and STATUS.md required | Establish discovery and continuity without six mandatory files |
| Specialized references recommended when relevant | Avoid empty documents and duplicate subjects |
| RBAC.md optional with a dedicated template | Make access-rule ownership discoverable without requiring it for every project |
| SPECS.md and SOW.md retained | Preserve useful requirements and scope ownership |
| Optional planning documents and archive | Keep detailed work out of concise current state |
| Self-contained README extension protocol | Let assistants add the smallest useful reference or plan within authorized scope |
| TASK plans only for independent context or lifecycle | Avoid creating one file per routine action |
| Curated milestone history | Keep durable outcomes discoverable without session noise |
| Preserve legacy entries on migration | Retain evidence without rewriting history |
| Visible instructions after the title | State purpose, authority, and maintenance where readers start |
| Configurable design checklist in .context/README.md | Enable useful defaults while preserving developer choices and adopted architecture |
| Optional development/release workflow in .context/README.md | Keep branch selection separate from delivery configuration and execution authorization |
| Uppercase names and optional YAML | Consistent naming without mandatory metadata |
