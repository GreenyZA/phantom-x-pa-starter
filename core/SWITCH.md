# SWITCH (escape / override notes)

- Switch only between turns — never mid-tool-loop (prompt-cache safety).
- `/model daily|free|local` style switches apply only where your runtime supports
  them; in other runtimes, reroute explicitly per call.
- Keep an escape hatch: a single-command way back to the previous state
  (`git checkout -`, env snapshot, or `bak` copy).
- When a component upgrade requires a cutover (e.g. moving from an older
  upstream snapshot), document the cutover and a rollback that restores the prior
  config + reload. Never destroy the rollback artefact.
- **Neo-Light (optional subsystem).** If the recipient runs an older
  `neo-light` (Light Engine) snapshot, the PA should compare versions,
  review the upstream diff, and apply **only after** an approval-sized Change
  record with a rollback — not silently. Treat `neo-light` as a *routing/swarm
  harness*, never as a business system or identity store.
- When in doubt, stop and ask rather than blend.
