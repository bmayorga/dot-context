# Growing Project Example

> **How to use this example:** This demonstrates context ownership as a project's documentation grows, without a named product, technology stack, or deployment infrastructure. Start with AGENTS.md and .context/README.md, then STATUS.md and relevant references. All state and policies are hypothetical; adapt them to implementation evidence in a real project.

## Files and Reading Triggers

| Document | Read for |
|---|---|
| [AGENTS.md](AGENTS.md) | Agent instructions |
| [.context/README.md](.context/README.md) | Context discovery and maintenance |
| [.context/STATUS.md](.context/STATUS.md) | Current state and priorities |
| [.context/ARCHITECTURE.md](.context/ARCHITECTURE.md) | Structure and component boundaries |
| [.context/DEVOPS.md](.context/DEVOPS.md) | Setup, runtime configuration, recovery |
| [.context/CI_CD.md](.context/CI_CD.md) | Validation gates, delivery, rollback |
| [.context/RBAC.md](.context/RBAC.md) | Roles, resource scope, authorization |
| [.context/FEATURE-VALIDATION.md](.context/FEATURE-VALIDATION.md) | Active validation work |
| [.context/CHANGES.md](.context/CHANGES.md) | Durable historical context |

Only README.md and STATUS.md are required by the standard. The other files are included
to show useful ownership boundaries, not a checklist every project must adopt.
The [minimal example](../minimal/README.md) demonstrates the starting point.

No executable application or pipeline is included. These examples illustrate the documentation
protocol rather than prescribe commands, deployment providers, or production policies.
