# Required-Field Validation

> **How this file works:** This owns the accepted scope, implementation checkpoints, validation, and completion state for required-field handling. Read it for this capability and update after verified progress or approved decisions. Implementation evidence takes precedence for actual behavior. Archive or remove it when it no longer governs active work and repair active links.

**State:** Approved — implementation pending

## Objective

Reject a submission that omits a required field with a clear validation message.

## Accepted Scope and Exclusions

Identify the required field and validate its absence through the existing submission path.
Changing which fields are required or redesigning the submission flow is outside this plan.

## Checkpoints

- [ ] Identify the required field and existing validation path.
- [ ] Implement missing-field handling.
- [ ] Verify both missing-field and valid-submission outcomes.

## Decisions and Dependencies

Follow the existing approved definition of the required field.

## Validation and Completion

A submission missing the field is rejected with an actionable message and creates no record.
A submission containing valid required data follows the existing success path.
Close the plan only after both outcomes have been verified.
