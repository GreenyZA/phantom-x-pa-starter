---
name: escape
description: "Use the single-command escape hatch when something is going wrong."
version: 1
---

# Escape skill

## Triggers
- outbound connector in auth/probation failure
- lost approval chain for a destructive action
- unexplained file or ownership mutation the owner did not expect
- prolonged ambiguity without a clear task boundary

## Action
1. Stop acting. Do not queue more work.
2. Reconstruct the *last approved step* from the daily note.
3. Report posture: frozen, reason, evidence.
4. Request an explicit un-freeze command.
5. Only resume after owner sign-off.

## Log format
Write a line in the daily note:

`FREEZE <timestamp> — <reason> — <evidence path>`
