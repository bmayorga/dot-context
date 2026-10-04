# Context System

> **How this file works:** Read this before each task, then STATUS.md and relevant documents. This owns discovery, authority, and maintenance. Update it when responsibilities or reading rules change; details belong in the references and plans below.

## Document Responsibilities

| Document | Owns | Read when | Update when |
|---|---|---|---|
| [STATUS.md](STATUS.md) | Current state, priorities, blockers, risks | Every task | Present state changes |
| [ARCHITECTURE.md](ARCHITECTURE.md) | Structure and component boundaries | Components or data flow change | Implemented design changes |
| [DEVOPS.md](DEVOPS.md) | Setup, runtime configuration, recovery | Runtime work | Operational configuration changes |
| [CI_CD.md](CI_CD.md) | Validation gates, delivery, rollback | Build or delivery work | Delivery configuration changes |
| [RBAC.md](RBAC.md) | Roles, permissions, resource scope | Access rules or checks change | Policy or enforcement materially changes |
| [FEATURE-VALIDATION.md](FEATURE-VALIDATION.md) | Approved scope and checkpoints | Validation capability work | Verified progress or approved decisions |
| [CHANGES.md](CHANGES.md) | Durable milestone history | Historical context matters | A lasting milestone completes |

## Authority

Implementation evidence establishes actual behavior; approved plans and policies establish
intended scope. Specialized references own their subjects. STATUS.md summarizes and routes.
Report conflicts between approved access rules and enforcement instead of silently rewriting
either. Historical records and inactive plans do not govern current work.

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

Update only materially changed facts, reconcile current status and active plans, and prepend
durable milestones. Archive inactive plans if useful or remove them; repair active links
and this index in the same change. Validate links and follow AGENTS.md for delivery rules.
