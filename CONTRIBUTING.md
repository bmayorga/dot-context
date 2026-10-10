# Contributing to .context/

> **How to use this document:** Read this before proposing or validating a contribution and follow AGENTS.md for repository work. Maintain it when package structure or contribution procedures change. README.md owns the standard and adoption guide; CHANGELOG.md owns history.

## Contribution Scope

Improve discovery, ownership, maintenance, migration, opening instructions, or adoption.
Keep the standard independent of tools, products, technology stacks, and hosting providers.
There is no required installer, toolchain, or tool-specific integration.

Update README.md's standard rules, relevant starter content, and the worked example together
when behavior changes. Preserve locally configurable defaults and interpretation rules.
Changes to package indexes must match the files actually included.

## Ownership and Examples

Use generic hypothetical facts, with no source-project names, business details, infrastructure,
credentials, or externally maintained plans. Separate approved scope from implementation evidence.
The worked example demonstrates a reference, active feature, current status, and retirement;
it is not shipped as installed project state.

Do not add placeholder plans to either starter. The installed README must teach creation,
registration, opening instructions, and lifecycle without depending on this repository.
Honor externally maintained material's declared synchronization process.

## Validation

Before delivering a coherent change:

1. Inspect the diff and validate local Markdown links and heading anchors.
2. Check visible opening instructions and uppercase context filenames.
3. Ensure each context README indexes exactly the documents present; distinguish historical archives.
4. Confirm Light has the two required context files and Complete has those plus seven references.
5. Confirm shared required documents, six design defaults, workflow defaults, and AGENTS routing agree.
6. Search maintained content for stale paths to removed documents. Historical prose retains its original meaning.
7. Build the archives and verify AGENTS.md and .context are at the archive root, with all hidden-directory files,
   the MIT LICENSE, and no source-repository documentation or examples.
8. Check diff whitespace and preserve the product history.

## Build Starter Archives

From the repository root, use PowerShell 7:

```powershell
pwsh -File scripts/build-packages.ps1
```

This creates unversioned-release-preparation files in ignored dist/ with an unreleased suffix.
For an approved release version, use:

```powershell
pwsh -File scripts/build-packages.ps1 -Version 'VERSION' -OutputDirectory './dist/release'
```

Replace VERSION with the approved version. The builder packages each starter's contents,
adds the root MIT LICENSE, includes the hidden .context directory, and refuses to replace
existing ZIP files. It does not install, commit, tag, push, or publish.

## Release Policy

The current starter distribution layout is unreleased; published v1.0.0 has the earlier source
layout. When publication is authorized, choose the version under README.md's versioning policy,
align metadata, validate both ZIPs, and publish them as clearly named release assets.
Keep existing tags immutable and make the asset instructions match actual downloads.
A documentation or packaging revision does not require changes in projects already using the
same installed protocol. Preserve the release-candidate and legacy history in CHANGELOG.md.
