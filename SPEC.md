# .context/ Standard — Specification 1.0.0-rc.1

> **How to use this document:** This defines the proposed standard. Read it when adopting or changing the convention. Update requirements and migration guidance together; project-specific implementation details belong in the adopting project's documents.

**Author:** [Byron Mayorga](https://www.linkedin.com/in/bmayorga/)\
**Status:** Release candidate — Final review before 1.0.0\
**License:** MIT  
**Date:** 2026-10-04

## Purpose

Persist project knowledge across AI sessions using plain, version-controlled Markdown.
Keep current state concise, read only relevant context, and give each documented subject
one clear owner. Complement AGENTS.md without requiring tooling or replacing an issue tracker.

MUST, SHOULD, and MAY express required, recommended, and optional behavior.

## Location and Naming

The directory MUST be named `.context/` at the project root. Monorepo sub-projects MAY
have their own directories; the root owns shared context and sub-projects own local context.

Maintained context documents MUST use uppercase names with a lowercase `.md` extension.
Planning documents SHOULD use `ROADMAP-<INITIATIVE>.md`, `EPIC-<CAPABILITY>.md`,
`FEATURE-<CAPABILITY>.md`, or `TASK-<WORK>.md`. Archived documents retain their names under `archive/`.
Externally maintained references MAY retain their original names; their owner and
synchronization process MUST be declared.

## Opening Instructions

Every maintained context document MUST begin, immediately after its title, with visible
instructions describing:

- What the document owns.
- When to read it.
- When and how to update it.
- Which sources take precedence and where other subjects belong, when applicable.

Instructions MUST be visible Markdown, not hidden comments. Optional YAML frontmatter
MAY precede the title; it does not replace the opening instructions.

## Required Documents

### README.md

The entry point owns discovery, document responsibilities, authority rules, and maintenance.
It MUST instruct readers to read STATUS.md next and then select relevant documents.
Its protocol SHOULD remain project-neutral; its index MAY list project-specific documents.
It MUST explain how to choose, create, register, maintain, and retire additional references
and planning documents so assistants can extend context without requiring the original standard.

### STATUS.md

A short snapshot of present state, active work, handoffs, blockers, risks, and next actions.
It MUST link to detailed documents rather than duplicate their contents. Replace stale
information in place. Completed history and detailed task lists belong elsewhere.

## Recommended Reference Documents

These documents SHOULD be added when their subjects are relevant. Empty files are not required.

| File | Owns | Maintenance |
|---|---|---|
| ARCHITECTURE.md | Implemented structure, boundaries, dependencies, decisions, invariants | Update in place after material design changes |
| DEVOPS.md | Local setup, environments, services, runtime operations, troubleshooting | Align with executable settings and scripts |
| CI_CD.md | Validation, pipelines, artifacts, deployment, delivery troubleshooting | Align with committed delivery configuration |
| CHANGES.md | Durable product or architectural milestones | Prepend new milestones; preserve existing history |

DEVOPS.md describes running the system; CI_CD.md describes building, validating, and
delivering it. Link across their boundary instead of duplicating procedures.

Templates: [DEVOPS.md](templates/DEVOPS.md) and [CI_CD.md](templates/CI_CD.md).

### CHANGES.md Format

Use `## YYYY-MM-DD — Title` followed by one concise paragraph explaining the change
and its significance. New milestones MUST be prepended below the opening instructions.
Existing entries MUST be preserved; historical corrections SHOULD be added as new entries.
Routine fixes, temporary progress, test bookkeeping, and session summaries SHOULD be excluded.

## Optional Specialized References

Projects MAY add a specialized reference when a subject needs a durable owner. These files
are not required for every project and MUST follow the opening-instruction and authority rules.

### RBAC.md

Role-based access control: identity categories, roles, permissions, resource scope,
authorization boundaries, and access invariants. Add it when these rules need more detail
than ARCHITECTURE.md should carry. Read it before changing roles, permission checks,
administrative access, or access-dependent navigation. Update it after a material change
to the approved access policy or implemented authorization contract, clearly distinguishing
the two. Code and tests establish implemented behavior; policy discrepancies must be reported.
Planned transitions belong in active plans, and delivery permissions belong in CI_CD.md.

Use the [RBAC.md template](templates/RBAC.md). Index any added specialized reference in
.context/README.md with its purpose, reading triggers, and maintenance rule. Do not create
empty specialized documents or duplicate their details in ARCHITECTURE.md or STATUS.md.

## Optional Scope and Planning Documents

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

## Authority and Ownership

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

## Task Protocol and AGENTS.md

Projects SHOULD include a root AGENTS.md with the integration instructions in
[the template](templates/AGENTS.md). Existing coding and delivery rules remain in AGENTS.md.

Before work: read AGENTS.md, then .context/README.md, then STATUS.md and relevant references
or plans. Inspect implementation evidence before claiming implemented behavior.

After a coherent change: review which documented facts materially changed, update affected
documents in place, reconcile plans and status, record a milestone only when durable, and
validate local links and references to retired documents. Documentation need not change
after every edit or session. This protocol does not authorize commits, pushes, or deployment.

## Configurable Design Recommendations

The AGENTS.md template includes a developer-configurable checklist with Clean Architecture,
SOLID, design patterns, KISS, YAGNI, and DRY enabled by default. These are recommendations
for relevant work, not requirements to use a specific architecture or technology stack.

Checked items enable a preference; unchecked items disable that preference without requiring
the opposite. Approved project decisions and more specific rules take precedence. An enabled
item does not require extra layers, interfaces, patterns, or structural rewrites. The checklist
does not expand task scope or grant delivery permission.

Assistants MUST preserve selections when merging or updating templates and MUST NOT change
them unless instructed by the developer. Missing selections MUST NOT be silently added to an
existing checklist; the default applies to a newly copied template. AGENTS.md owns these
preferences; ARCHITECTURE.md owns adopted decisions and implemented structure. No additional
context file is needed for the checklist.

## Frontmatter

YAML frontmatter is optional. When used, `last_updated` SHOULD be an ISO 8601 timestamp
with timezone and `updated_by` SHOULD identify the maintainer. Keep metadata accurate.
Visible ownership or lifecycle notes MAY be used without YAML.

## Migration from v0.1

1. Add README.md and visible opening instructions to maintained documents.
2. Route AGENTS.md through README.md instead of requiring every file on every task.
3. Condense STATUS.md; move detailed active tasks into a suitable plan and link to it.
4. Add operational and delivery references only where useful; retain SPECS.md and SOW.md.
5. Preserve existing CHANGES.md lines and their order as legacy history. Add opening
   instructions explaining the transition, then prepend future milestone entries above
   the legacy history. Do not fabricate dates or rewrite old session entries.
6. Archive inactive plans and repair all active references.
7. Validate links and remove conflicting instructions about reading all files or logging every session.

## Versioning

The standard uses semantic versioning. This revision is `1.0.0-rc.1`, the first release
candidate for 1.0.0. It changes required files and the history convention relative to
v0.1; adoption requires the migration steps above.

Release 1.0.0 after final review confirms required files and document responsibilities,
history and migration rules, and consistency across the specification, templates, examples,
and AGENTS.md integration. No additional features are required for that review. Changes
to the candidate may produce another release candidate before the stable release.

After 1.0.0, incompatible changes to required files or normative workflow rules increment
the major version; backward-compatible additions increment the minor version; clarifications
and corrections that preserve requirements increment the patch version.

| Version | Date | Description |
|---|---|---|
| 1.0.0-rc.1 | 2026-10-04 | First release candidate; complete context protocol and migration guidance ready for final review |
| 0.2 draft | 2026-10-04 | Context entry point, opening instructions, scoped reading, authority, maintenance, planning, and migration |
| 0.1 | 2026-02-19 | Initial proposal |
