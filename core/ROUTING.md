# Routing rules

Defaults. Override via env / your own `core/SWITCH.md`.

- **Tier 0 — Local model** (preferred for cheap, private work): use when a
  local model endpoint is available and the call is clearly low-risk.
- **Tier 1 — Free cloud**: use for anything that benefits from a bit more
  capability but stays within cost budget.
- **Tier 2 — Paid/capable**: escalation path, never the default.
- **Private data stays home.** Never send private data to a free or shared
  endpoint.
- **Security/confidential tasks carry a confidence ceiling.** If the router
  cannot clear its threshold, escalate rather than silently downgrade.
- **Quality over speed.** Cheapest viable first, then step up only if needed.

The recipient wires their own router (their assistant runtime's equivalent of
`/model daily|free|local`). This file is the spec, not the implementation.
