# Continuous Integration and Delivery

> **How this file works:** This owns validation gates, artifacts, release approval, and rollback for the hypothetical project. Read it for build or delivery work. Update it when committed delivery configuration changes; executable pipelines and scripts establish actual behavior. DEVOPS.md owns runtime recovery and RBAC.md owns application authorization. This example grants no permission to publish or deploy.

## Validation Gates

Review changes and require relevant checks to pass before accepting a release.
For the active validation feature, verify both missing-field rejection and valid submission.
For authorization changes, verify allowed and denied operations within and outside scope.

## Release and Recovery

Deliver the reviewed artifact only under the project's approved release procedure.
Record the released revision and retain a known working revision for rollback.
After release or rollback, verify runtime health using [DEVOPS.md](DEVOPS.md).

## Current Acceptance Work

The missing-field feature is not release-ready until the checks in
[FEATURE-VALIDATION.md](FEATURE-VALIDATION.md) pass. The plan tracks those checkpoints;
this document owns the reusable gate rather than duplicating its progress.
