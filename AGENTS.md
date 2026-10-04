# AGENTS.md

> **How to use this file:** Read this before repository work. It defines agent-facing rules for maintaining the .context/ proposal. Follow the context protocol below and update these instructions when repository conventions change.

This repository proposes the `.context/` standard for AI-first project documentation.

## Project Context

Before every task:

1. Read `.context/README.md` and follow its discovery, authority, and maintenance protocol.
2. Read `.context/STATUS.md` for current state and next actions.
3. Read relevant references and plans. For standard changes, read `.context/SPECS.md`,
   `.context/SOW.md`, and `SPEC.md`.
4. Inspect actual files before claiming the specification, templates, or examples are aligned.

After a coherent change:

- Update affected context documents when their underlying facts materially change.
- Replace stale status and reconcile active scope and requirements.
- Prepend a milestone to `.context/CHANGES.md` for durable standard changes; preserve history.
- Validate local Markdown links and references to renamed, archived, or removed documents.
- Follow the user's delivery instructions; this protocol does not authorize commits or pushes.

## Documentation Guidelines

- Write documentation in English.
- Use uppercase names with a lowercase `.md` extension inside `.context/`.
- Put visible purpose, reading, and maintenance instructions immediately after each context document's title.
- Keep the standard simple and independent of tools, products, or technology stacks.
- Use generic examples without source-project names, infrastructure, business details, or private data.
- Keep examples coherent and commands runnable for the stated environment.
- Align SPEC.md, README.md, templates, examples, and this repository's own context.
- Preserve existing externally maintained content through its declared synchronization process.

## Repository Structure

- `SPEC.md`: formal proposal.
- `README.md`: introduction, adoption, and migration.
- `CONTRIBUTING.md`: contribution guidance.
- `.context/`: this repository's own context.
- `templates/`: copyable document templates and AGENTS.md integration.
- `examples/minimal/` and `examples/growing/`: project-neutral documentation examples.
- `LICENSE`: MIT.
