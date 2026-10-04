# Role-Based Access Control

> **How this file works:** This optional reference owns approved role semantics, resource scope, and authorization boundaries for the hypothetical project. Read it before permission or access-dependent navigation changes. Update approved policy after an owner's decision and enforcement claims after verification; code and tests establish implementation. Report gaps, keep planned transitions in feature plans, and leave delivery approval rules in CI_CD.md.

## Approved Access Policy

Roles express permitted operations; resource scope independently limits which records
an identity can access. A role does not grant access outside its assigned scope.

| Role | Read within scope | Create and update within scope | Assign roles within scope |
|---|---|---|---|
| Reader | Allowed | Denied | Denied |
| Contributor | Allowed | Allowed | Denied |
| Maintainer | Allowed | Allowed | Allowed |

## Enforcement and Invariants

The trusted application boundary must enforce permissions and resource scope.
Hidden navigation alone is not enforcement. Unauthenticated requests and out-of-scope
operations must not gain access merely because an action is visible or an identifier is known.

This table is an illustrative approved policy, not evidence of implemented enforcement.
When adapting it, document verified enforcement points and any discrepancies explicitly.

## Validation

Check both allowed and denied operations for each role, plus out-of-scope attempts.
Keep delivery approval separate from application roles; [CI_CD.md](CI_CD.md) owns that process.

## Open Decisions

None in this hypothetical policy.
