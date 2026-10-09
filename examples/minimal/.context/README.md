# Context System

> **How this file works:** Read this before each task, then STATUS.md. This owns discovery, authority, and maintenance for a small project. Update it when the document set or protocol changes; current state belongs in STATUS.md.

## Documents

[STATUS.md](STATUS.md) owns present state, blockers, and immediate priorities.
No additional references or plans are currently needed.

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

- [ ] Development and Release Workflow: use a development integration branch,
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
