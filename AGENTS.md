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

## Design Recommendations

Checked items are enabled recommendations. Unchecked items are disabled preferences.
Apply enabled recommendations when relevant to the task, respecting approved project
decisions, established conventions, and more specific project rules.

- [x] Clean Architecture: favor clear boundaries and keep business rules independent
      of infrastructure details where practical.
- [x] SOLID: favor cohesive responsibilities, focused contracts, and controlled
      dependencies where applicable.
- [x] Design patterns: use established patterns when they solve an identified problem
      and justify their added complexity.
- [x] KISS: prefer the simplest design that satisfies current requirements.
- [x] YAGNI: add abstractions and extension points for demonstrated needs.
- [x] DRY: consolidate duplicated knowledge when it represents the same rule and
      should evolve together.

An enabled recommendation does not require a particular folder layout, extra layers,
interfaces, or a pattern for every change. A disabled preference does not require its
opposite and does not override approved architecture or other project rules.
These preferences do not authorize architectural rewrites or scope expansion.

Explain significant tradeoffs and record adopted architectural decisions in
.context/ARCHITECTURE.md when that document exists. The checklist expresses preferences;
ARCHITECTURE.md records actual decisions and implemented structure.

Only change checklist selections when instructed by the developer. Preserve existing
selections when updating or merging the template.

## Documentation Guidelines

- Write documentation in English.
- Link author attribution to https://www.linkedin.com/in/bmayorga/ and omit organization branding.
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
