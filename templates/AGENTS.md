# AGENTS.md

<!--
  .context/ integration snippet
  Copy this block into your existing AGENTS.md, or use this file as a starting point.
  Standard: https://github.com/byronmayorga/dot-context
-->

## Project Context

This project uses the `.context/` standard for AI session continuity.

**At the start of every session, read these files in order:**

1. `.context/STATUS.md` — current phase, blockers, and next actions
2. `.context/SPECS.md` — requirements and acceptance criteria
3. `.context/SOW.md` — scope and what is explicitly out of scope
4. `.context/ARCHITECTURE.md` — tech stack and key architectural decisions

**At the end of every session:**

1. Update `.context/STATUS.md`:
   - Mark completed items as `[x]`
   - Add any new blockers discovered
   - Update "Next Actions" to reflect current priorities

2. Append one line to `.context/CHANGES.md`:
   - Format: `YYYY-MM-DD | [your-tool-name] | brief description of what was done`

## Coding Style
<!-- Add your project-specific coding instructions below -->

## Commands
```bash
# Example:
# npm run dev
# php artisan serve
```
