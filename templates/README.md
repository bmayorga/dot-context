# Context System

> **How this file works:** This is the context entry point. Read it before each task, then read STATUS.md and only the documents relevant to the work. Update this protocol when document responsibilities or maintenance rules change; keep project implementation details in their owning references.

## Document Responsibilities

README.md and STATUS.md are required. Add other documents only when useful.
Remove index rows for absent optional documents and add routes to locally relevant references.
DEVOPS.md and CI_CD.md are recommended when relevant; RBAC.md is an optional specialized reference.

| Document | Responsibility | Read when | Update when |
|---|---|---|---|
| README.md | Discovery, authority, and maintenance protocol | Every task | The context system changes |
| STATUS.md | Present state, active work, handoffs, blockers, risks | Every task | Present state changes |
| ARCHITECTURE.md | Implemented structure, boundaries, dependencies, invariants | Design or component boundaries matter | Architecture materially changes |
| DEVOPS.md | Setup, environments, services, runtime operations | Setup or runtime operations matter | Executable operational settings change |
| CI_CD.md | Validation, pipelines, artifacts, deployment | Build or delivery matters | Delivery configuration changes |
| RBAC.md | Roles, permissions, resource scope, authorization boundaries | Roles, permissions, or access-dependent navigation change | Approved policy or implemented access contracts materially change |
| CHANGES.md | Durable milestones | Historical context matters | A lasting milestone is completed |
| SPECS.md | Requirements and acceptance criteria | Expected behavior matters | Requirements are approved or revised |
| SOW.md | Scope, exclusions, milestones, deliverables | Scope boundaries matter | Scope changes are approved |

## Start of Task

1. Read AGENTS.md, this document, and STATUS.md.
2. Select relevant references and active plans; do not read every file automatically.
3. Inspect code, tests, and executable configuration before claiming implemented behavior.
4. Resolve discrepancies using the authority rules below.

## Design Preferences

Read the Design Recommendations checklist in AGENTS.md when present. Checked items are
enabled preferences for relevant work; unchecked items are disabled preferences. Preserve
developer selections and change them only when instructed by the developer. Approved
decisions and more specific project rules take precedence. Record adopted architecture
in ARCHITECTURE.md when it exists; do not duplicate the checklist or infer implementation
from its selections. No extra context file is needed for these preferences.

## Authority

- Code, migrations, tests, settings, scripts, and pipeline configuration govern implemented behavior.
- Specialized references own their subjects; STATUS.md summarizes and links.
- Approved requirements and plans govern intended scope, not implemented behavior.
- Historical entries and archived plans explain the past and do not govern current work.
- Approved business definitions govern conceptual meaning. Report conflicts with implementation
  to the responsible owner rather than silently rewriting either source.

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

## End of Task

1. Review the diff and identify documented facts that materially changed.
2. Update only affected documents, following their opening instructions.
3. Replace stale current-state text; reconcile active plans and STATUS.md.
4. Prepend a CHANGES.md milestone only for lasting product or architectural work.
5. Validate local links and references to renamed, archived, or removed documents.
6. Follow AGENTS.md and the project's delivery policy for commits, pushes, and deployment.

If documented facts did not materially change, documentation needs no update.
