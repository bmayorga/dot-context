# Context System

> **How this file works:** This is the installed project's context entry point. Read it before each task, then read STATUS.md and relevant documents. Maintain the index and protocol when responsibilities change; preserve developer configuration. Project facts belong in their owning documents.

## Document Responsibilities

This Complete starter includes the required README.md and STATUS.md plus optional references.
Fill each useful document with verified project facts. Remove unused optional files and their
index rows together. Included scaffolds do not establish approved scope or implemented behavior.
Create plans only when concrete work needs them, following the protocol below.

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

## Configuration and Template Updates

This README owns the design and branch-workflow configuration below. AGENTS.md routes
assistants here and retains project-specific rules. More specific project rules and
developer instructions take precedence; report unresolved conflicts rather than changing
settings or project policy silently.

Preserve checkbox selections, branch names, and local configuration when updating the
template. Only the developer may instruct changes to those settings. The defaults apply
to a new installation and must not reset an existing project's choices.

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
ARCHITECTURE.md when that document exists. The checklist expresses preferences;
ARCHITECTURE.md records actual decisions and implemented structure.

Only change checklist selections when instructed by the developer. Preserve existing
selections when updating or merging the template.

## Development and Release Workflow

- [x] Development and Release Workflow: use a development integration branch,
      short-lived working branches, and a stable release branch.

Development branch: `dev`
Stable branch: `main`

The checked option enables the rules below. When unchecked, follow the project's existing
workflow. The developer chooses the branch names; `master` may replace `main` as the stable
branch. Confirm those names before adopting the workflow in an existing repository.
Preserve this selection and configuration during template updates; change them only when
instructed by the developer. Do not create permanent branches or change branch protections
merely because this section was copied.

### Normal Work

1. Start a focused working branch from the configured development branch. Use descriptive
   names such as `feat/<DESCRIPTION>`, `fix/<DESCRIPTION>`, `docs/<DESCRIPTION>`,
   `refactor/<DESCRIPTION>`, `test/<DESCRIPTION>`, or `chore/<DESCRIPTION>`.
   Use lowercase hyphenated descriptions; do not add assistant names or prefixes.
2. Keep incomplete work on its working branch. Validate and review a coherent completed
   change before integrating it into the development branch; use a PR/MR when project
   rules require one. Follow the project's merge strategy and keep development usable.
3. Once integration is confirmed, the working branch may be deleted unless the developer
   says to retain it. Verify inclusion of its changes through merge history or the PR/MR
   record, including squash or rebase merges. Never discard unmerged work or reuse a
   completed branch for unrelated work.

### Releases and Urgent Fixes

- When a reviewed version is ready, integrate the development branch into the stable
  branch, validate the result, and tag the approved version. A merge or tag does not
  automatically authorize deployment or publication.
- For an urgent correction to a published version, create `hotfix/<DESCRIPTION>` from
  the stable branch. Validate and review it, integrate it into stable, and incorporate
  the correction into development so it survives the next release.
- Reconcile stable-only release changes back into development when needed. Retire a
  completed hotfix branch after confirming integration into both branches.
- No dedicated release branch is required. The developer may extend this workflow
  when the project needs additional controls.

Respect existing developer authorization and project rules for commits, pushes, merges,
branch deletion, tags, and releases. Enabling this option defines the branch route and
does not grant blanket permission to perform those operations.

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

### Optional Reference Subjects

These are useful document names, not a list of files installed in this project:

| Subject | Suggested owner |
|---|---|
| Implemented design and boundaries | ARCHITECTURE.md |
| Setup and runtime operations | DEVOPS.md |
| Validation, pipelines, and delivery | CI_CD.md |
| Roles, permissions, and resource scope | RBAC.md |
| Approved requirements and acceptance | SPECS.md |
| Approved scope and deliverables | SOW.md |
| Durable history | CHANGES.md: dated YYYY-MM-DD milestones, newest first; preserve earlier entries |

Add only useful owners and register actual files in the index. An approved requirement
or access policy does not prove implementation. Other subjects may use a new uppercase
descriptive filename. Keep references separate from intended work and current status.

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
   maintenance, authority, and lifecycle. Identify ownership and synchronization rules for
   externally maintained material. Use the opening-instruction pattern below even when
   creating a document without a starter file.
4. For a plan, record its state, objective, accepted scope and exclusions, checkpoints,
   decisions or dependencies, validation, and completion criteria. Label unresolved scope
   as proposed; do not invent approval. For a reference, document current knowledge and
   its evidence, keeping proposed changes separate.
5. Register the document in this README with its responsibility, reading trigger, and
   maintenance rule. Link active work from STATUS.md and link any parent or related plan.
   Keep detail in its owning document instead of copying it across files.
6. Validate links and reconcile state whenever the document is renamed or retired.

### Opening Instructions for Every New Document

Use this pattern immediately after the title and replace every placeholder with facts:

```markdown
# DOCUMENT TITLE

> **How this file works:** This document owns [subject].
> Read it when [trigger]. Update it when [facts change].
> [Authoritative sources] take precedence; related details belong in [other documents].
```

For a plan, also state its lifecycle and when to archive or remove it. Assistants must
include these instructions in every new document. If an existing document lacks them,
add an accurate header within the authorized work, or report unclear ownership.
Follow declared synchronization rules before editing externally maintained material.
Register the document in this README with its reading and maintenance triggers.

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
