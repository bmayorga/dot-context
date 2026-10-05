# Agent Instructions

> **How to use this file:** Read these instructions before working in the repository. Follow the context protocol below and the project's coding and delivery rules. Update this file when agent-facing rules change; project knowledge belongs in .context/.

## Project Context

Before every task:

1. Read `.context/README.md` and follow its discovery, authority, and maintenance rules.
2. Read `.context/STATUS.md`.
3. Read only the references and active plans relevant to the task.
   When present, use DEVOPS.md for runtime operations, CI_CD.md for delivery, and RBAC.md
   for roles, permissions, and authorization boundaries.
4. Inspect source code and executable configuration before making implementation claims.

After a coherent change:

- Update affected context documents only when their underlying facts materially changed.
- Replace stale present-state text and reconcile relevant active plans.
- Prepend a durable milestone to `.context/CHANGES.md` when that optional file exists.
  Preserve existing entries; exclude routine progress and session summaries.
- Validate links and repair references to renamed, archived, or removed documents.

Do not rewrite externally maintained documents outside their declared synchronization process.
Report conflicts between implementation and approved business definitions or intended scope.

## Design Recommendations

Checked items are enabled recommendations. Unchecked items are disabled preferences.
Apply enabled recommendations when relevant to the task, respecting approved project
decisions, established conventions, and more specific project rules.

- [x] Clean Architecture: favor clear boundaries and keep business rules independent
      of infrastructure details where practical.
- [x] SOLID: favor cohesive responsibilities, focused contracts, and controlled
      dependencies where applicable.
- [ ] Design patterns: use established patterns when they solve an identified problem
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

## Project Rules

This is a hypothetical documentation example. Keep its documents and links coherent.
Use actual implementation evidence when adapting it to a project; these files describe
an illustrative workflow and do not supply application code.
