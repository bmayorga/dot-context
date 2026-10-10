# Context Workflow Example

> **How to use this example:** Read this to see completed documentation and a resumable plan. Start with AGENTS.md and .context/README.md, then STATUS.md and relevant documents. All facts and approvals are hypothetical; this example is a reading reference outside the starter packages. Update it when the illustrated protocol changes.

## Follow the Context

1. [AGENTS.md](AGENTS.md) routes the assistant to the project protocol.
2. [.context/README.md](.context/README.md) indexes existing documents and preserves configuration.
3. [.context/STATUS.md](.context/STATUS.md) states that an approved validation change is pending.
4. [.context/ARCHITECTURE.md](.context/ARCHITECTURE.md) describes the current submission boundaries.
5. [.context/FEATURE-VALIDATION.md](.context/FEATURE-VALIDATION.md) owns scope, checkpoints, and acceptance.

The feature is deliberately pending. Approval does not prove implementation, and checked
design recommendations do not prove that a particular architecture exists.

## Continue and Close the Work

After verified progress, update the feature checkpoints and replace STATUS.md's next action.
Keep routine steps in that feature; create a TASK only if independent handoff context is useful.
When both acceptance outcomes pass, mark the feature completed and promote any durable
design conclusions into ARCHITECTURE.md. Archive or remove the inactive plan, repair the
context index and status links, and record a milestone only if a lasting outcome warrants it.

Design patterns are disabled here to demonstrate a local preference. The optional branch
workflow is enabled with dev and main; this documentation does not establish actual branches
or pipelines. The starter packages enable all six design recommendations and the workflow.
