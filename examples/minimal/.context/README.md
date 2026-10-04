# Context System

> **How this file works:** Read this before each task, then STATUS.md. This owns discovery, authority, and maintenance for a small project. Update it when the document set or protocol changes; current state belongs in STATUS.md.

## Documents

[STATUS.md](STATUS.md) owns present state, blockers, and immediate priorities.
No additional references or plans are currently needed.

## Authority

Inspect implementation evidence before claiming behavior. Approved requirements govern
intent; source code, tests, and executable settings establish implementation.
Report discrepancies instead of silently changing approved intent.

## Choosing and Adding Documents

The assistant may add context documents when needed for already authorized work, following
AGENTS.md and project scope rules. Creating a document does not approve new scope, business
rules, or delivery actions.

### Choose the Smallest Useful Owner

| Need | Document | Use when |
|---|---|---|
| Durable knowledge about a subject | An existing reference, or a new uppercase descriptive name | Knowledge needs a stable owner beyond the current task |
| Broad initiative or release | `ROADMAP-<INITIATIVE>.md` | Several capabilities need sequencing, dependencies, and shared completion criteria |
| Coordinated capability | `EPIC-<CAPABILITY>.md` | Several features contribute to one shared outcome |
| Bounded capability | `FEATURE-<CAPABILITY>.md` | Accepted scope and implementation checkpoints need to persist across sessions |
| Bounded execution unit | `TASK-<WORK>.md` | A fix, investigation, refactor, or implementation step needs its own handoff, decisions, or validation |

A TASK can stand alone or support a FEATURE or EPIC. Keep routine implementation steps as
checklist items in their existing plan. Create a separate TASK only when it benefits from
independent context or lifecycle. A FEATURE can stand alone; neither an EPIC nor a ROADMAP
is required. Do not create a full hierarchy automatically.

### Creation Procedure

1. Search current references, active plans, and any existing tracker before creating a file.
   Update an existing owner when it already covers the subject; link to external tracking
   instead of creating competing task state.
2. Choose a durable reference or the smallest useful planning type from the table.
   Use an uppercase descriptive filename with a lowercase .md extension.
3. Immediately after the title, add visible instructions stating purpose, when to read,
   maintenance, authority, and lifecycle. Identify ownership, including synchronization
   rules for externally maintained material.
4. For a plan, record its state, objective, accepted scope and exclusions, checkpoints,
   decisions or dependencies, validation, and completion criteria. Label unresolved scope
   as proposed; do not invent approval. For a reference, document current knowledge and
   its evidence, keeping proposed changes separate.
5. Register the document in this README with its responsibility, reading trigger, and
   maintenance rule. Link active work from STATUS.md and link any parent or related plan.
   Keep detail in its owning document instead of copying it across files.
6. Validate links and reconcile state whenever the document is renamed or retired.

### Planning Lifecycle

State whether work is proposed, active, blocked, completed, or cancelled; note approval
and remaining acceptance checks when relevant. Update checkpoints after verified progress,
not inferred completion. References are maintained in place as their subjects change.

When a plan no longer governs active work, promote durable conclusions to the relevant
references, record a milestone only if lasting, then archive the plan if historically useful
or remove it otherwise. Update STATUS.md, this index, and related active links in the same
change. Clearly identify any retained archive link as historical. Archived plans do not
govern current work.

Additional documents do not become required core files. Do not add a document merely
because a template exists.

## Maintenance

Replace stale status when the underlying facts change. Do not log every session.
Add a specialized reference or active plan only when the subject outgrows concise status,
then index it here with its reading and maintenance rules.
Validate links and follow AGENTS.md for coding and delivery instructions.
