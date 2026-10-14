---
name: neo-light-update
description: "Use when the owner runs neo-light (Light Engine): check upstream for updates, diff, and apply only through an approval-sized Change with rollback."
version: 1
---

# Neo-Light update skill

## Purpose
If the owner already runs a `neo-light` (Light Engine) host, keep it current
without breaking their assistant. `neo-light` is a *routing / swarm / harness*
subsystem — useful, but never the home of personal data, identity, or memory.

## Boundary rule (do not violate)
- neo-light is a **harness**: token-optimiser routing, swarm-decision grading,
  free-model probing. It is *not* a business system, client store, or vault.
- Do **not** copy the PA's memory, identity, or owner data into it.
- Do **not** move the PA's daily operations into it.

## Procedure (every review)
1. Detect the owner's installed version and source path (`<NEO_LIGHT_ROOT>`).
2. Fetch the upstream list of changes (tags/commits) without auto-pulling.
3. Produce a short diff summary: changed modules, new skills, routing changes,
   breaking changes, security notes.
4. Rank each item:
   - **safe** (docs, tooling, optional)
   - **routine** (low-risk config)
   - **change** (anything touching routing/priority/fallback)
   - **breaking** (requires rollout)
5. Before applying anything above "safe":
   - write a Change record with scope, impact/risk, a backout plan
   - confirm the owner explicitly approves the change class
   - back up the current config (tag or dated copy)
6. Apply in small batches. Verify each batch against the health skill before
   continuing. Keep a rollback artefact until at least one clean reporting day.
7. Record the outcome (what changed, what was deferred, any new hazard).

## Never
- Auto-pull or auto-apply upstream updates silently.
- Cross data between neo-light and your PA's private state.
- Treat a missing update as an emergency — propose, then wait.
