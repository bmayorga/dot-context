# Agent Instructions

> **How to use this file:** Read this before maintaining dot-context. It governs this distribution repository, not projects installing a starter. Update these rules when repository conventions change; the public standard belongs in README.md.

## Before Work

1. Read README.md for product structure, installation, current release status, and relevant standard rules.
2. Read CONTRIBUTING.md for maintenance and validation; consult CHANGELOG.md when history matters.
3. Inspect actual package and example files before claiming alignment. This repository has no internal .context.
4. Respect approved scope, ownership, and developer-selected settings; report conflicts rather than inventing policy.

## Maintenance Rules

- Write documentation in English, with generic examples free of source-project details or private data.
- Link author attribution to https://www.linkedin.com/in/bmayorga/ and omit organization branding.
- Use uppercase filenames with lowercase .md inside installed context directories.
- Put visible purpose, reading, and maintenance instructions immediately after each document's title.
- Keep README standard rules, both starters, and the worked example consistent.
- Light includes only README and STATUS; Complete adds optional references. Plans are created for actual work.
- Keep both starters' required documents and defaults synchronized; their indexes reflect their different contents.
- Preserve existing checkbox choices, branch names, and project rules when integrating starter content.
- Preserve history. Prepend durable product milestones to CHANGELOG.md; omit routine session bookkeeping.
- Validate local links, index entries, obsolete references, and package contents after coherent changes.
- Follow developer delivery instructions. These rules do not authorize commits, pushes, tags, or releases.

## Repository Design Preferences

These selections preserve the repository's former internal context preferences.
Apply enabled recommendations where relevant, without expanding scope or forcing extra layers.

- [x] Clean Architecture: favor clear boundaries and independence from infrastructure.
- [x] SOLID: favor cohesive responsibilities and focused contracts.
- [x] Design patterns: solve an identified problem and justify complexity.
- [x] KISS: use the simplest design meeting current requirements.
- [x] YAGNI: add abstractions for demonstrated needs.
- [x] DRY: consolidate the same knowledge that should evolve together.

Only change these selections when instructed by the developer. Disabled preferences do not
require their opposite or override approved decisions. Record durable product design decisions
in README.md's Design Rationale. Project installation defaults belong in the starter READMEs.

The optional dev/main workflow remains disabled for this repository; its starter defaults
do not adopt it here. Use existing repository workflow and developer delivery instructions.

## Repository Structure

- README.md: product guide, standard rules, adoption, and distribution status.
- CONTRIBUTING.md: contribution, validation, and package-building guidance.
- CHANGELOG.md: preserved product milestones and historical evidence.
- starter-light/ and starter-complete/: contents incorporated into a project.
- examples/workflow/: one hypothetical worked example, excluded from starter archives.
- scripts/build-packages.ps1: optional maintainer ZIP builder.
- LICENSE: MIT.
