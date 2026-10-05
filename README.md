# .context/ Standard

> **How to use this repository:** Start here for adoption, read [SPEC.md](SPEC.md) for the rules, and copy only the templates you need. Contributors must read [AGENTS.md](AGENTS.md) before editing. Keep the specification, templates, examples, and repository context consistent.

**A lightweight, AI-first project context convention.**

**Version:** 1.0.0-rc.1 — Release candidate for final review before 1.0.0.

Proposed by [Byron Mayorga](https://www.linkedin.com/in/bmayorga/)

## What is .context/?

A small directory of plain Markdown that preserves project knowledge between AI sessions.
It describes current state, scope, design, and operational knowledge without requiring tooling.
Current references represent the present; plans describe intended work; curated history
records lasting milestones.

AGENTS.md holds agent instructions. .context/README.md defines how to discover and maintain
project knowledge. They work together.

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

From a local copy of this repository, use its absolute path:

```bash
# Run from the root of the adopting project.
mkdir -p .context
cp /path/to/dot-context/templates/README.md .context/README.md
cp /path/to/dot-context/templates/STATUS.md .context/STATUS.md
```

Fill in current state, remove optional index rows for documents you do not use, and copy
the integration block below into your existing AGENTS.md. Add relevant
[templates](templates/) as needed. Each starts with visible purpose and maintenance
instructions; retain and adapt those instructions.

## Integration with AGENTS.md

Place this block near the top of AGENTS.md, before project-specific coding rules:

```markdown
## Project Context

Before every task:
1. Read .context/README.md and follow its discovery, authority, and maintenance rules.
2. Read .context/STATUS.md.
3. Read only the references and active plans relevant to the task.
4. Inspect implementation evidence before claiming implemented behavior.

After a coherent change:
- Update affected documents only when their underlying facts materially changed.
- Replace stale current-state text and reconcile relevant active plans.
- If CHANGES.md exists, prepend a durable milestone and preserve existing entries.
- Validate links and repair references to renamed, archived, or removed documents.

Report discrepancies between implementation and approved scope or business definitions.
Follow existing project rules for commits, pushes, and deployment.
```

A complete [AGENTS.md template](templates/AGENTS.md) is also available. For a new AGENTS.md,
copy that template and customize its project rules. When AGENTS.md already exists, merge
the context block above and the design checklist without replacing existing rules
or developer selections.

### Configure Design Recommendations

The template enables Clean Architecture, SOLID, design patterns, KISS, YAGNI, and DRY by
default in its **Design Recommendations** checklist. Keep the checklist in AGENTS.md;
ARCHITECTURE.md continues to own adopted decisions and implemented structure.

- `[x]` enables a recommendation for relevant work.
- `[ ]` disables the preference; it does not require doing the opposite.
- Developers may disable individual items. Assistants preserve selections and change them
  only when instructed by the developer, including during template updates.
- Approved project decisions and more specific rules take precedence. Enabled items do
  not require new layers, interfaces, folder layouts, or a pattern for every change.

For example, a developer can change the Design patterns checkbox from `[x]` to `[ ]`.
The assistant then follows existing project decisions without treating that recommendation
as an enabled preference. All defaults are visible in the
[copyable checklist](templates/AGENTS.md#design-recommendations).

When merging into an existing AGENTS.md, copy the entire Design Recommendations section,
including its interpretation rules. Review conflicts with local rules and preserve any
existing checklist choices; do not reset them to the template defaults.

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

1.0.0-rc.1 adds README.md, opening instructions, scoped reading, and curated history.
Keep existing SPECS.md and SOW.md when useful. Preserve legacy CHANGES.md entries and their
order; prepend future dated milestones above them and document the transition.
See [the migration checklist](SPEC.md#migration-from-v01).

## Release Readiness

The first release candidate has the complete proposed workflow. Before 1.0.0, confirm
required files and responsibilities, history and migration rules, and consistency across
the specification, templates, examples, and AGENTS.md integration.

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
