---
name: health
description: "Use for the unbound health baseline: probe each component, stop on the first unknown."
version: 1
---

# Health-check skill

## Baseline (adjust to the recipient's stack)

1. Report current time and day.
2. Probe the assistant runtime's own components:
   - inbox connector (read-only test if available)
   - calendar connector
   - the local model endpoint (if configured)
   - any files required by the owner profile
3. Probe OS-level basics:
   - disk free for the user home partition
   - swap usage
   - a single named process you expect to be running
4. Probe the owner's chosen systems (website, dashboard, repo, etc.), returning
   plain status per item.
5. Write results to a dated note.

## Output shape

- one line per component: `up / degraded / down` with evidence
- a "red list" of unknowns (no fabricated asserts)
- suggest a fix the owner can accept or reject

## Priority rule

If a component is down **or unknown**, it is P0. Do not move to interview
follow-ups until the red list is empty or explicitly accepted as open.
