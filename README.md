# .context/ Standard

> **How to use this repository:** Start here for adoption, read [SPEC.md](SPEC.md) for the rules, and copy only the templates you need. Contributors must read [AGENTS.md](AGENTS.md) before editing. Keep the specification, templates, examples, and repository context consistent.

**Keep your project context across AI sessions.**

**Version:** 1.0.0 — Stable release.

Proposed by [Byron Mayorga](https://www.linkedin.com/in/bmayorga/)

## What is .context/?

.context gives developers and AI assistants a shared place for project decisions,
current work, and next steps, so the next session can pick up where the last one left off.

Start with two Markdown files. Add architecture, operations, permissions, and plans as
your project needs them. Keep everything versioned in your repository, with configurable
recommendations and no required tooling.

**[Get started](#quick-start) · [See examples](#examples-and-contributions)**

AGENTS.md holds project-specific agent instructions and a small context routing block.
.context/README.md owns discovery, configuration, and maintenance. They work together.

## Structure

```text
project/
├── AGENTS.md
└── .context/
    ├── README.md                 # Required: discovery and maintenance protocol
    ├── STATUS.md                 # Required: concise present-state snapshot
    ├── ARCHITECTURE.md           # Recommended when design needs documentation
    ├── DEVOPS.md                 # Recommended when operations need documentation
    ├── CI_CD.md                  # Recommended when delivery needs documentation
    ├── RBAC.md                   # Optional when access rules need a dedicated reference
    ├── CHANGES.md                # Recommended for durable milestone history
    ├── SPECS.md                  # Optional requirements and acceptance criteria
    ├── SOW.md                    # Optional scope and deliverables
    ├── FEATURE-CAPABILITY.md      # Optional bounded plan
    ├── TASK-WORK.md               # Optional independently resumable execution unit
    └── archive/                  # Optional inactive plans
```

Start with README.md and STATUS.md. Add other documents only when they provide useful knowledge.
Optional ROADMAP-* and EPIC-* plans support broader work without requiring a planning hierarchy.

## Quick Start

Install .context by incorporating selected templates into your project's repository.
Use either the manual steps or the assistant prompt below. Templates are the installation
source; examples show how completed documents can look and are reading references.

### Install from a Release ZIP

1. Open the [1.0.0 release](https://github.com/bmayorga/dot-context/releases/tag/v1.0.0),
   download **Source code (zip)**, and extract it outside your project's repository.
2. Inspect any existing `.context/` and `AGENTS.md`. Create `.context/` if absent, then
   copy `templates/README.md` and `templates/STATUS.md` into it only when those files
   are missing. Merge updates into existing documents using
   [Updating Existing Installations](#updating-existing-installations).
3. For a new AGENTS.md, copy `templates/AGENTS.md` to the project root and fill in its
   project rules. For an existing AGENTS.md, merge only the
   [Project Context routing block](#integration-with-agentsmd), preserving current rules.
4. Fill STATUS.md with verified project state, remove absent optional documents from
   the context README index, and review design preferences and branch-workflow settings.
   Add other templates only when the project needs their subjects and register them in
   `.context/README.md`.
5. Complete [Installation Verification](#installation-verification).

Copy the selected template files into the project; keep the extracted standard, its own
`.context/`, and its examples outside the project's installed context.

### Install with an AI Assistant

Give an assistant with repository and download access this prompt from your project's root:

```text
Install .context standard version 1.0.0 in this repository using the release at
https://github.com/bmayorga/dot-context/releases/tag/v1.0.0.
Download and extract that release outside this repository and use its templates.
Inspect existing .context files and AGENTS.md before editing. Create only missing
required documents, merge protocol updates, and preserve current state, custom
rules, checkbox selections, and branch names. Integrate the small AGENTS.md
routing block without replacing project-specific instructions.
Initialize STATUS.md from verified project facts and remove absent optional
documents from the context README index. Show me the design recommendations,
workflow toggle, and branch names so I can choose the configuration; preserve
existing choices. Add optional documents only when the project needs them and
register them in .context/README.md.
Explicitly read the installed context README, verify AGENTS.md routes to it,
validate local links, and summarize the installed files and configuration.
```

If the assistant cannot download the release, provide its extracted templates and use
the same integration procedure.

### Copy from Local Templates

If you already have an extracted release or a local copy of this repository, run these
commands in Bash from the adopting project's root. Replace `/path/to/dot-context` with
the absolute path of that local copy.
If either required context file already exists, follow
[Updating Existing Installations](#updating-existing-installations) instead of replacing it.

```bash
# Run from the root of the adopting project.
if [ -e .context/README.md ] || [ -e .context/STATUS.md ]; then
  echo "Existing context detected. Follow Updating Existing Installations."
else
  mkdir -p .context &&
  cp /path/to/dot-context/templates/README.md .context/README.md &&
  cp /path/to/dot-context/templates/STATUS.md .context/STATUS.md
fi
```

Fill in current state, remove optional index rows for documents you do not use, and copy
the integration block below into your existing AGENTS.md. Add relevant
[templates](templates/) as needed. Each starts with visible purpose and maintenance
instructions; retain and adapt those instructions.

## Integration with AGENTS.md

Add this small routing block near the top of an existing AGENTS.md. Preserve its current
coding, delivery, and project-specific instructions.

```markdown
## Project Context

Before every task, read `.context/README.md` and follow its discovery,
configuration, and maintenance protocol. Preserve existing project
rules and developer-selected settings.
```

For a new AGENTS.md, copy [the template](templates/AGENTS.md) and fill in its project rules.
The context README owns the complete protocol and configuration; keep one active copy
instead of duplicating those sections in AGENTS.md.

### Installation Verification

1. Inspect existing context first. Create only missing README and STATUS documents from
   the templates, then initialize verified project state. Preserve existing content,
   checkbox selections, branch names, and custom rules; merge protocol updates using
   [Updating Existing Installations](#updating-existing-installations).
2. Inspect any existing AGENTS.md and add or update only the Project Context routing block.
3. Verify the root AGENTS.md points to the actual .context/README.md and that the file exists.
   Have the assistant read it explicitly during setup; copying a directory alone does not
   guarantee discovery.
4. Review and show the developer the README's design selections, workflow toggle, and
   development/stable branch names. Defaults apply to new configuration; retain existing choices.
   Enabled workflow settings do not create permanent branches or grant delivery permission.
5. Validate local links and remove optional index rows for references not installed.

### Configure Design Recommendations

Edit the [context README checklist](templates/README.md#design-recommendations).
Clean Architecture, SOLID, design patterns, KISS, YAGNI, and DRY are enabled by default
in a new installation. `[x]` enables a recommendation for relevant work; `[ ]` disables
that preference without requiring its opposite.

Developers choose settings. Assistants preserve selections during updates and change them
only when instructed. More specific project rules and approved decisions take precedence.
An enabled item does not require extra layers, interfaces, folder layouts, or patterns.
ARCHITECTURE.md continues to own adopted decisions and implemented structure.

### Configure the Optional Branch Workflow

The [context README workflow](templates/README.md#development-and-release-workflow) includes
an enabled checkbox for new installations. Keep `[x]` to adopt it or use `[ ]` to follow
the project's existing process. Configure development (default `dev`) and stable (default
`main`, or `master` where appropriate) in that same README.

Normal work follows `dev -> feat/*, fix/*, docs/*, etc. -> dev -> main/master -> version tag`.
The README contains the full validation, review, hotfix, branch-cleanup, and authorization
rules. CI_CD.md, when present, owns actual delivery gates and procedures and references the
configured workflow instead of duplicating it.

The minimal example and this repository keep the optional workflow disabled; the growing
example enables it. Updating this standard does not adopt a branch workflow locally.

### Updating Existing Installations

Preserve the project's README checkbox selections, branch names, and custom configuration
while incorporating protocol improvements. The small AGENTS.md routing block normally
needs no change when the context protocol evolves.

For installations that put the context design or workflow blocks in AGENTS.md:

1. Move those context-owned blocks into .context/README.md with their exact current settings.
2. Verify all selections, branch names, and local extensions were retained; resolve conflicts
   explicitly with the developer instead of choosing silently.
3. Keep independently maintained coding and delivery rules in AGENTS.md. Remove only the
   migrated context-owned copies and install the small routing block.
4. Update references in ARCHITECTURE.md, CI_CD.md, and other affected documents, then validate links.

## Document Ownership

| Document | Owns |
|---|---|
| README.md | Discovery, authority, and maintenance |
| STATUS.md | Present state, active work, handoffs, blockers, risks, next actions |
| ARCHITECTURE.md | Implemented structure, boundaries, decisions, and invariants |
| [DEVOPS.md](templates/DEVOPS.md) | Local setup, environments, services, and runtime operations |
| [CI_CD.md](templates/CI_CD.md) | Validation, pipelines, artifacts, and delivery |
| [RBAC.md](templates/RBAC.md) | Roles, permissions, resource scope, and authorization boundaries |
| CHANGES.md | Durable milestones, newest first |
| SPECS.md / SOW.md | Approved requirements / scope |
| ROADMAP-* / EPIC-* / FEATURE-* / TASK-* | Active plans at the smallest useful scale |

Code and executable configuration establish implemented behavior. Approved requirements,
scope, and business definitions establish intent. Report conflicts instead of silently
changing approved definitions to match code. Historical records do not govern current work.

DEVOPS.md and CI_CD.md are recommended when operational or delivery knowledge needs to be
documented. RBAC.md is optional and useful when access rules need a dedicated reference.
Read them for runtime work, delivery work, and authorization work respectively. Add only
the documents your project needs and list each in .context/README.md so agents can discover it.
The [specification](SPEC.md#optional-specialized-references) explains specialized references.

## Choosing and Adding Files

The copied [.context/README.md template](templates/README.md) contains the complete selection,
creation, registration, and lifecycle protocol so an assistant can add documents later.

| Type | Use for |
|---|---|
| ROADMAP-* | A broad initiative or release with sequencing across capabilities |
| EPIC-* | A shared outcome spanning coordinated features |
| FEATURE-* | A bounded capability with accepted scope and persistent checkpoints |
| TASK-* | A fix, investigation, refactor, or execution step needing independent handoff or validation |
| Additional reference | Durable knowledge needing a separate subject owner |

Choose the smallest useful owner. Tasks and features may stand alone; no parent hierarchy
is required. Keep routine steps in an existing checklist rather than creating one file per action.

Before creating a file, search existing context and tracking. Update an existing owner if
it already covers the subject. Otherwise use an uppercase descriptive filename, visible
opening instructions, ownership and authority, and explicit lifecycle. Plans also need
objective, accepted scope, checkpoints, dependencies, decisions, validation, and completion criteria.
Documenting proposed scope does not approve it.

Index the new file in .context/README.md with reading and maintenance rules, route active
work from STATUS.md, and link related plans without duplicating their contents. After
verified progress, reconcile the plan. When inactive, promote durable conclusions to
references, archive or remove the plan, and repair active links in the same change.

Copyable plans: [ROADMAP](templates/ROADMAP-INITIATIVE.md),
[EPIC](templates/EPIC-CAPABILITY.md), [FEATURE](templates/FEATURE-CAPABILITY.md),
and [TASK](templates/TASK-WORK.md).

## Task Workflow

At the start, read AGENTS.md, .context/README.md, STATUS.md, and relevant documents.
At the end, update only materially changed facts. Keep detailed task lists in plans and
history in CHANGES.md. Archive inactive plans and repair active links in the same change.
Do not create a context document when another document already owns its subject.

Each maintained context document must have visible instructions immediately after its title
explaining its purpose, when to read it, and how to maintain it. YAML metadata is optional.

## Migrating from v0.1

1.0.0 adds a self-contained README entry point, opening instructions, scoped reading,
curated history, and configurable design and branch-workflow options in .context/README.md.
AGENTS.md uses a small routing block while retaining project-specific rules.
Keep existing SPECS.md and SOW.md when useful. Preserve legacy CHANGES.md entries and their
order; prepend future dated milestones above them and document the transition.
See [the migration checklist](SPEC.md#migration-from-v01).

## Stable Release

1.0.0 is the first stable version of the standard. Final review confirmed required files,
document responsibilities, history and migration rules, and consistency across the
specification, templates, examples, and AGENTS.md integration. Installation guidance
protects existing configuration and project state.

## Examples and Contributions

- [Minimal project](examples/minimal/README.md): AGENTS.md, context discovery, and concise status.
- [Growing project](examples/growing/README.md): architecture, DEVOPS, CI_CD, RBAC, active
  planning, and milestone history, with clear reading triggers and ownership.

Both are hypothetical documentation examples without named products, technology stacks,
or deployment infrastructure. Choose the smallest useful set; the growing example does
not make its optional documents mandatory.

See [CONTRIBUTING.md](CONTRIBUTING.md) for contribution guidance.

## License

MIT · [Byron Mayorga](https://www.linkedin.com/in/bmayorga/)
