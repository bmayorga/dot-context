# Project Status

> **How this file works:** Read this after README.md for the proposal's current state and priorities. Replace stale information in place. Requirements belong in SPECS.md, scope in SOW.md, design in ARCHITECTURE.md, and durable history in CHANGES.md.

## Current State

Stable 1.0.0 defines README.md and STATUS.md as required, visible opening instructions,
scoped context reading, subject ownership and authority, material-change maintenance,
optional planning/archive conventions, and curated milestone history with v0.1 migration.
Published on 2026-10-09 as tag v1.0.0 at release commit 3aba1e0:
[GitHub release](https://github.com/bmayorga/dot-context/releases/tag/v1.0.0).

Templates cover required documents, recommended references, optional requirements/scope,
planning documents, optional RBAC guidance, and AGENTS.md. Minimal and growing examples
demonstrate the workflow without product, stack, or infrastructure details. The growing
example shows when to read DEVOPS.md, CI_CD.md, and RBAC.md and how their subjects differ.
Context READMEs explain choosing, adding, registering, maintaining, and retiring references
and ROADMAP/EPIC/FEATURE/TASK plans. TASK files are optional; routine steps stay in checklists.
Author attribution uses the LinkedIn profile consistently; organization branding has been removed.
.context/README.md owns a default-enabled design checklist for Clean Architecture, SOLID,
design patterns, KISS, YAGNI, and DRY. Developers can disable preferences; assistants preserve
their selections. Examples demonstrate defaults and one disabled preference without adding files.
The optional Development and Release Workflow defines configurable integration and stable
branches, conventional work-branch names, hotfix reconciliation, and integrated-branch cleanup.
The template enables it; the minimal example and this repository keep it disabled.
AGENTS.md now contains a small routing block; installation verifies that it reaches the
README protocol. Updates preserve local choices and migrate earlier context-owned blocks.

Local checks passed for Markdown links and anchors, opening instructions, uppercase context
filenames, generic example/template content, and diff whitespace.
The final review on 2026-10-09 confirmed document responsibilities, history, migration,
and consistency. Its installation overwrite finding is resolved: Quick Start checks both
required files before copying, and existing installations follow merge guidance. Verification
passed for a fresh project, an empty context directory, either required file alone, and both
existing files; existing content was preserved and no partial installation was performed.

## Active Work and Next Actions

1. Collect community feedback and evaluate future changes using semantic versioning.

## Handoffs and Blockers

None. Final review is complete; the annotated tag and stable GitHub release are published.

## Known Risks

Existing adopters need explicit migration: 1.0.0 adds a required entry point and changes the
history convention. Legacy history is preserved rather than rewritten.
