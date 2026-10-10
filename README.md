# .context/ Standard

> **How to use this repository:** Start here for the product, installation, and standard rules. Copy the contents of one starter package into your project and follow its installed protocol. Contributors read AGENTS.md and CONTRIBUTING.md before repository work; keep this guide, packages, and example aligned.

**Keep your project context across AI sessions.**

**Standard version:** 1.0.0 — Stable. **Starter packaging:** Unreleased.

Proposed by [Byron Mayorga](https://www.linkedin.com/in/bmayorga/)

.context gives developers and AI assistants a shared place for project decisions,
current work, and next steps, so the next session can pick up where the last one left off.

Start with two Markdown files. Add architecture, operations, permissions, and plans as
your project needs them. Keep everything versioned in your repository, with configurable
recommendations and no required tooling.

**[Get started](#quick-start) · [See the example](#example) · [Read the standard](#standard-rules)**

## Product Repository and Installed Project

This repository distributes the standard, starter packages, and a worked example.
Its root README and AGENTS describe maintaining dot-context. It has no internal .context.

Each starter contains the structure to incorporate into a project:

```text
starter-light/                    starter-complete/
├── AGENTS.md                     ├── AGENTS.md
└── .context/                     └── .context/
    ├── README.md                     ├── README.md
    └── STATUS.md                     ├── STATUS.md
                                      ├── ARCHITECTURE.md
                                      ├── DEVOPS.md
                                      ├── CI_CD.md
                                      ├── RBAC.md
                                      ├── CHANGES.md
                                      ├── SPECS.md
                                      └── SOW.md
```

Copy a starter's **contents** into the project root. AGENTS.md and .context are already
at their final relative locations; the starter wrapper stays outside the project.
The installed .context/README.md owns the project's protocol and configuration.
The product README is documentation for adoption and distribution.

## Choose a Starter

| Package | Contains | Choose when |
|---|---|---|
| [Light](starter-light/) — recommended | AGENTS routing, context README, STATUS | You want the minimum and will add documents as needed |
| [Complete](starter-complete/) | Light plus seven optional references, each with opening instructions | You want prepared reference documents and will fill or remove them |

Both include the complete protocol for creating documents later. Light's index lists
only its two context files. Complete's index lists its nine; remove an unused optional
file and its index row together. Complete scaffolds are prompts to document verified
facts, not evidence of architecture, pipelines, permissions, or approved scope.
Neither package creates empty ROADMAP, EPIC, FEATURE, or TASK plans.

## Quick Start

1. Choose **Light** or **Complete** and obtain that starter's contents.
2. In a project without .context or AGENTS.md, copy the package's .context directory
   and AGENTS.md into the project root. If either exists, use
   [Updating an Installed Project](#updating-an-installed-project) to integrate the content.
3. Read the installed .context/README.md, fill STATUS.md with verified project state,
   and review the design and branch-workflow configuration. With Complete, fill useful
   references and remove unused files with their index rows.
4. Run through [Installation Verification](#installation-verification).

The project is ready for context-guided work when discovery works, the index matches
the files, current state is initialized, and configuration has been reviewed.

### Download Status

The published [v1.0.0 release](https://github.com/bmayorga/dot-context/releases/tag/v1.0.0)
uses the earlier templates layout. This starter layout is currently unreleased.
Use the starter folders in a checkout containing this revision until package assets are
published. Future package ZIPs will contain AGENTS.md, .context/, and the MIT LICENSE
at the archive root; extract them outside the project before integrating their contents.
The full repository source ZIP includes product documentation and the example as well.
The archive LICENSE accompanies dot-context's distribution; retain it with the download.
Copy only AGENTS.md and .context into the project, preserving its own license files.

### Install with an AI Assistant

Provide the chosen starter directory or extracted package to the assistant and use:

```text
Install the supplied dot-context starter in this project.
Inspect existing .context files and AGENTS.md before editing. Create missing
documents and integrate updates while preserving current state, custom rules,
checkbox selections, and branch names. Merge the starter's Project Context
routing block into AGENTS.md without replacing project-specific instructions.
Initialize STATUS.md from verified project facts. Show me the design
recommendations, workflow toggle, and branch names so I can choose configuration;
preserve existing choices. For Complete, fill useful references and remove
unused files together with their index rows.
Explicitly read the installed context README, verify AGENTS.md routes to it,
check the index and local links, and summarize the files and configuration.
```

### AGENTS.md Integration

Each starter supplies this small block:

```markdown
## Project Context

Before every task, read `.context/README.md` and follow its discovery,
configuration, and maintenance protocol. Preserve existing project
rules and developer-selected settings.
```

Copy the starter AGENTS.md when none exists and fill its project rules. Otherwise merge
the block near the top of the existing file. Preserve coding, delivery, and other local rules.
The product repository's own AGENTS.md is for product maintenance and is not installation content.

### Installation Verification

- AGENTS.md routes to the actual .context/README.md, and the assistant has explicitly read it.
- README.md and STATUS.md exist inside .context, with visible opening instructions.
- STATUS.md reflects verified current state; unknown facts remain explicit.
- The README index matches installed documents, with reading and maintenance triggers.
- Design selections, workflow choice, and development/stable branch names have been reviewed.
- Existing content and configuration were preserved; local links resolve.

The starters enable Clean Architecture, SOLID, design patterns, KISS, YAGNI, and DRY.
The optional workflow is enabled with dev and main. Developers may disable preferences
or choose branch names; copying these settings creates no branches and grants no delivery
permission. Full interpretation and workflow rules live in each installed README.

## Updating an Installed Project

Inspect the project before copying. Create missing documents, merge protocol improvements,
and preserve developer selections, branch names, current state, history, and local extensions.
The AGENTS routing block normally remains valid as the protocol evolves.

For older installations with context-owned design or workflow sections in AGENTS.md,
move those sections into .context/README.md with their exact choices. Verify preservation,
then remove only the migrated duplicates. Independently maintained project rules stay in
AGENTS.md. Resolve conflicting choices with the developer and repair affected links.

Changing between Light and Complete does not reset configuration or remove existing
project documents. Add relevant references and index rows intentionally.
Existing projects installed from v1.0.0 templates keep the same .context and AGENTS destinations.

## Adding Documents Later

The installed README contains selection, creation, registration, and retirement rules.
Assistants can create specialized references or ROADMAP, EPIC, FEATURE, and TASK plans
without obtaining another package. Every new file needs visible opening instructions,
even when written manually. The protocol includes a copyable header and directs assistants
to address missing headers within authorized work and declared ownership.

Use the smallest useful document. Index it in the context README and link active work from
STATUS. Keep routine steps in an existing plan; create a TASK when independent handoff
context or lifecycle is useful. Retire inactive plans and repair links after verified work.

Optional reference starters remain available in [Complete](starter-complete/.context/);
copy only the relevant file into a Light installation, adapt its facts, and register it.

## Example

[The workflow example](examples/workflow/README.md) shows a current architecture reference,
an approved but unimplemented feature, and a concise status that routes to its next action.
It demonstrates configuration and how to close or retire a plan after verified work.
Its project facts are hypothetical. The example is a reading reference outside package ZIPs.

## Design Rationale

The standard uses plain Markdown, scoped reading, one owner per subject, and material-change
maintenance. Current references, intended plans, and preserved history have distinct roles.
A self-contained installed README lets a project evolve its context independently of this
distribution repository. Specialized references and planning hierarchies remain optional.
AGENTS provides discovery while retaining project-specific rules; configuration stays in
the context README and does not establish implemented architecture or delivery authority.

## Standard Rules

This section is the normative definition of the standard. MUST, SHOULD, and MAY express
required, recommended, and optional behavior. Starter packages implement these rules;
their packaging does not change the required installed filenames.

### Location and Naming

The directory MUST be named `.context/` at the project root. Monorepo sub-projects MAY
have their own directories; the root owns shared context and sub-projects own local context.

Maintained context documents MUST use uppercase names with a lowercase `.md` extension.
Planning documents SHOULD use `ROADMAP-<INITIATIVE>.md`, `EPIC-<CAPABILITY>.md`,
`FEATURE-<CAPABILITY>.md`, or `TASK-<WORK>.md`. Archived documents retain their names under `archive/`.
Externally maintained references MAY retain their original names; their owner and
synchronization process MUST be declared.

### Opening Instructions

Every maintained context document MUST begin, immediately after its title, with visible
instructions describing:

- What the document owns.
- When to read it.
- When and how to update it.
- Which sources take precedence and where other subjects belong, when applicable.

Instructions MUST be visible Markdown, not hidden comments. Optional YAML frontmatter
MAY precede the title; it does not replace the opening instructions.

### Required Documents

#### README.md

The entry point owns discovery, document responsibilities, authority rules, and maintenance.
It MUST instruct readers to read STATUS.md next and then select relevant documents.
Its protocol SHOULD remain project-neutral; its index MAY list project-specific documents.
It MUST explain how to choose, create, register, maintain, and retire additional references
and planning documents so assistants can extend context without requiring the original standard.

#### STATUS.md

A short snapshot of present state, active work, handoffs, blockers, risks, and next actions.
It MUST link to detailed documents rather than duplicate their contents. Replace stale
information in place. Completed history and detailed task lists belong elsewhere.

### Recommended Reference Documents

These documents SHOULD be added when their subjects are relevant. Empty files are not required.

| File | Owns | Maintenance |
|---|---|---|
| ARCHITECTURE.md | Implemented structure, boundaries, dependencies, decisions, invariants | Update in place after material design changes |
| DEVOPS.md | Local setup, environments, services, runtime operations, troubleshooting | Align with executable settings and scripts |
| CI_CD.md | Validation, pipelines, artifacts, deployment, delivery troubleshooting | Align with committed delivery configuration |
| CHANGES.md | Durable product or architectural milestones | Prepend new milestones; preserve existing history |

DEVOPS.md describes running the system; CI_CD.md describes building, validating, and
delivering it. Link across their boundary instead of duplicating procedures.

Complete starter references: [DEVOPS.md](starter-complete/.context/DEVOPS.md) and [CI_CD.md](starter-complete/.context/CI_CD.md).

#### CHANGES.md Format

Use `## YYYY-MM-DD — Title` followed by one concise paragraph explaining the change
and its significance. New milestones MUST be prepended below the opening instructions.
Existing entries MUST be preserved; historical corrections SHOULD be added as new entries.
Routine fixes, temporary progress, test bookkeeping, and session summaries SHOULD be excluded.

### Optional Specialized References

Projects MAY add a specialized reference when a subject needs a durable owner. These files
are not required for every project and MUST follow the opening-instruction and authority rules.

#### RBAC.md

Role-based access control: identity categories, roles, permissions, resource scope,
authorization boundaries, and access invariants. Add it when these rules need more detail
than ARCHITECTURE.md should carry. Read it before changing roles, permission checks,
administrative access, or access-dependent navigation. Update it after a material change
to the approved access policy or implemented authorization contract, clearly distinguishing
the two. Code and tests establish implemented behavior; policy discrepancies must be reported.
Planned transitions belong in active plans, and delivery permissions belong in CI_CD.md.

Use the [RBAC.md starter reference](starter-complete/.context/RBAC.md). Index any added specialized reference in
.context/README.md with its purpose, reading triggers, and maintenance rule. Do not create
empty specialized documents or duplicate their details in ARCHITECTURE.md or STATUS.md.

### Optional Scope and Planning Documents

SPECS.md owns requirements and acceptance criteria. SOW.md owns approved scope, exclusions,
milestones, and deliverables. They remain supported and MUST NOT be deleted solely to migrate.

- ROADMAP-* describes a broad initiative, sequencing, dependencies, risks, and completion criteria.
- EPIC-* describes a shared capability spanning coordinated features.
- FEATURE-* describes a bounded capability, accepted scope, checkpoints, validation, and state.
- TASK-* describes a bounded execution unit such as a fix, investigation, refactor, or
  implementation step that needs independent handoff context, decisions, or validation.

Choose the smallest useful document. Do not create a full hierarchy automatically.
A TASK MAY stand alone or support a FEATURE or EPIC; a FEATURE need not have an EPIC.
Routine steps SHOULD remain checklist items in an existing plan unless independent context
or lifecycle makes a separate TASK useful. Creating a document does not approve new scope.
Plans MUST distinguish intended work from implemented behavior and SHOULD state their
lifecycle explicitly. Detailed task tracking belongs in plans, not STATUS.md.
When a plan no longer governs active work, archive it if useful or remove it otherwise.
Update active links and STATUS.md in the same change. Archived plans MUST NOT serve as
current instructions.

Before adding a document, search for an existing subject owner or tracker. New documents
MUST be indexed in .context/README.md with responsibility, reading triggers, and maintenance
rules. Active work SHOULD be linked from STATUS.md and related plans. State ownership,
authority, scope, lifecycle, and completion criteria where relevant; do not invent approval
or duplicate external tracking. Promote durable conclusions into references before retiring
a plan and repair active links in the same change.

### Authority and Ownership

Use the narrowest authoritative source for the fact:

1. Source code, migrations, tests, executable settings, and scripts describe implementation.
   Descriptive documentation does not override implemented behavior.
2. Specialized current documents own their subjects; STATUS.md summarizes and routes.
3. Approved requirements and plans govern intended scope, not proof of completion.
4. CHANGES.md, version history, and archives provide historical evidence.
5. An approved business or domain document may own conceptual definitions. If implementation
   conflicts with those definitions, report the discrepancy rather than silently changing either.

Unresolved conflicts in intended scope or business meaning SHOULD be referred to the
responsible owner. Externally maintained documents MUST follow their declared synchronization
process; do not rewrite them as if locally owned.

### Task Protocol and AGENTS.md

Projects SHOULD include a root AGENTS.md with the integration instructions in
[the template](starter-light/AGENTS.md). Its Project Context block SHOULD route readers to
.context/README.md without copying the protocol or context configuration. Existing coding
and delivery rules remain in AGENTS.md. Installation SHOULD verify that the routing target
exists, explicitly read it, and review configuration with the developer; copying the folder
alone does not guarantee automatic discovery.

Before work: read AGENTS.md, then .context/README.md, then STATUS.md and relevant references
or plans. Inspect implementation evidence before claiming implemented behavior.

After a coherent change: review which documented facts materially changed, update affected
documents in place, reconcile plans and status, record a milestone only when durable, and
validate local links and references to retired documents. Documentation need not change
after every edit or session. This protocol does not authorize commits, pushes, or deployment.

### Configurable Design Recommendations

Both starter context READMEs include a developer-configurable checklist with Clean Architecture,
SOLID, design patterns, KISS, YAGNI, and DRY enabled by default. These are recommendations
for relevant work, not requirements to use a specific architecture or technology stack.

Checked items enable a preference; unchecked items disable that preference without requiring
the opposite. Approved project decisions and more specific rules take precedence. An enabled
item does not require extra layers, interfaces, patterns, or structural rewrites. The checklist
does not expand task scope or grant delivery permission.

Assistants MUST preserve selections when merging or updating templates and MUST NOT change
them unless instructed by the developer. Missing selections MUST NOT be silently added to an
existing checklist; the default applies to a newly installed starter. .context/README.md owns
these preferences; ARCHITECTURE.md owns adopted decisions and implemented structure. No
additional context file is needed for the checklist.

### Optional Development and Release Workflow

Both starter context READMEs offer an enabled workflow checkbox with configurable development
and stable branches, defaulting to `dev` and `main`. Adoption is optional; developers may
disable it or configure an existing `master` stable branch. It is a lightweight convention
for development and versioned releases, not a requirement to implement full Git Flow.

When enabled, normal working branches originate from development and return after
validation and review. Development SHOULD remain usable; incomplete work stays on working
branches. Use descriptive `feat/`, `fix/`, `docs/`, `refactor/`, `test/`, or `chore/` names
without assistant-specific prefixes. Completed branches MAY be deleted after confirming
their changes were integrated, including through squash or rebase, unless instructed to retain
them. Unmerged work MUST be preserved.

Approved release state moves from development to stable and receives a version tag.
Urgent published-version fixes use `hotfix/` from stable and MUST be incorporated into
both stable and development. Reconcile stable-only release adjustments into development
when needed. No separate release branch is required.

.context/README.md owns the selected workflow and branch configuration; CI_CD.md, when present,
owns executable gates, delivery procedures, and project-specific release behavior.
Assistants MUST preserve developer configuration and MUST NOT change it unless instructed.
Enabling the option does not grant blanket permission for commits, pushes, merges, branch
deletion, tags, publication, or deployment, nor create permanent branches or protections.
The distribution repository documents this option without adopting it.

### Updating Existing Installations

Assistants MUST preserve project-owned configuration while updating the context protocol.
An existing context checklist or branch workflow in AGENTS.md SHOULD be moved to
.context/README.md with its exact selections, branch names, and local extensions. Verify
preservation before removing the context-owned duplicate. Independently maintained project
rules stay in AGENTS.md; unresolved conflicts must be reported to the developer.
Validate the routing block and affected links after migration. Defaults MUST NOT reset
local choices, and the protocol SHOULD have one active source of truth.

### Frontmatter

YAML frontmatter is optional. When used, `last_updated` SHOULD be an ISO 8601 timestamp
with timezone and `updated_by` SHOULD identify the maintainer. Keep metadata accurate.
Visible ownership or lifecycle notes MAY be used without YAML.

### Migration from v0.1

1. Add README.md and visible opening instructions to maintained documents.
2. Route AGENTS.md through README.md instead of requiring every file on every task.
3. Condense STATUS.md; move detailed active tasks into a suitable plan and link to it.
4. Add operational and delivery references only where useful; retain SPECS.md and SOW.md.
5. Preserve existing CHANGES.md lines and their order as legacy history. Add opening
   instructions explaining the transition, then prepend future milestone entries above
   the legacy history. Do not fabricate dates or rewrite old session entries.
6. Archive inactive plans and repair all active references.
7. Validate links and remove conflicting instructions about reading all files or logging every session.

### Versioning

The standard uses semantic versioning. This revision is `1.0.0`, the first stable release.
It changes required files and the history convention relative to v0.1; adoption requires
the migration steps above.

Final review confirmed required files and document responsibilities, history and migration
rules, and consistency across the standard rules, starter content, examples, and AGENTS.md
integration. The installation guide preserves existing configuration and project state.

After 1.0.0, incompatible changes to required files or normative workflow rules increment
the major version; backward-compatible additions increment the minor version; clarifications
and corrections that preserve requirements increment the patch version.

| Version | Date | Description |
|---|---|---|
| 1.0.0 | 2026-10-09 | First stable release after final review; configuration-preserving installation and migration |
| 1.0.0-rc.4 | 2026-10-09 | Context README owns configuration and full protocol; minimal AGENTS routing and verified installation/update migration |
| 1.0.0-rc.3 | 2026-10-09 | Optional development/release workflow with configurable branches, conventional names, hotfix reconciliation, and integrated-branch cleanup |
| 1.0.0-rc.2 | 2026-10-09 | Configurable design recommendations in AGENTS.md, enabled defaults, and preservation of developer selections |
| 1.0.0-rc.1 | 2026-10-04 | First release candidate; complete context protocol and migration guidance ready for final review |
| 0.2 draft | 2026-10-04 | Context entry point, opening instructions, scoped reading, authority, maintenance, planning, and migration |
| 0.1 | 2026-02-19 | Initial proposal |

## Contributing and Releases

See [CONTRIBUTING.md](CONTRIBUTING.md) for maintenance, validation, and package preparation.
[CHANGELOG.md](CHANGELOG.md) preserves milestones and legacy history from the former internal
context. The 1.0.0 release remains unchanged; the new distribution layout is pending publication.
Package-building tools are for maintainers and are optional for adopting projects.

## License

MIT · [Byron Mayorga](https://www.linkedin.com/in/bmayorga/)
