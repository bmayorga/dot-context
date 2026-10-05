# Requirements and Acceptance Criteria

> **How this file works:** This owns the proposal's goals, requirements, and acceptance criteria. Read it before changing the standard. Update after an approved requirement change; SPEC.md defines the resulting proposal, SOW.md owns scope, and STATUS.md owns current state.

## Objective

Propose an open, lightweight Markdown convention for project knowledge and AI session continuity.

## Requirements

- Plain Markdown with no required toolchain.
- Independent of AI tool, product, technology stack, and hosting provider.
- Root AGENTS.md integration and context discovery through README.md.
- README.md and STATUS.md required; other documents added when useful.
- Visible purpose, reading, and maintenance instructions at the top of maintained context documents.
- Explicit authority, ownership, scoped reading, and material-change maintenance.
- Concise current state, optional active plans, and preserved milestone history.
- Self-contained README rules for choosing, creating, registering, and retiring additional files.
- Optional TASK-* plans for independently resumable execution units; routine steps stay in checklists.
- Optional SPECS.md/SOW.md and optional YAML metadata.
- A developer-configurable design checklist in AGENTS.md, enabled by default in the template.
- Preserve local selections and separate recommendations from implemented architecture.
- Project-neutral templates and examples.
- Minimal and growing examples demonstrate optional DEVOPS.md, CI_CD.md, and RBAC.md ownership.
- MIT license.

## Acceptance Criteria

- [x] Specification, public README, and AGENTS.md describe the same workflow.
- [x] Templates cover required, recommended, and optional document types.
- [x] Minimal and growing examples demonstrate routing, planning, current state, and history.
- [x] Optional RBAC guidance and template complement recommended operations and delivery references.
- [x] README selection and lifecycle rules cover ROADMAP, EPIC, FEATURE, TASK, and specialized references.
- [x] Migration guidance preserves v0.1 history and useful scope/requirements files.
- [x] Maintained context documents start with visible instructions after their titles.
- [x] Version and release status aligned as 1.0.0-rc.1.
- [x] Template defaults, checkbox semantics, installation guidance, and configurable examples are aligned.
- [ ] Final review confirms required files and document responsibilities.
- [ ] Final review confirms history, migration, and consistency before 1.0.0.
- [ ] Community feedback collected on the release candidate.

## Exclusions

Required CLI tools, linters, editor extensions, and tool-specific integrations.
