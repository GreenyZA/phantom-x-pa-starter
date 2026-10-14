# Secrets — where to put your keys (NOT what they are)

The kit never ships values. It only documents **paths** so the recipient knows
exactly where to paste theirs, then the connector/runtime reads them at its own
layer.

| Purpose | Suggested location | Notes |
|---------|-------------------|-------|
| GitHub PAT | `~/.config/github/token` | one line, no newline-ish junk |
| Model provider key | follow your assistant runtime's docs | usually `~/.config/<provider>/api_key` |
| Vault (Obsidian) | env var `OBSIDIAN_VAULT_PATH` or `~/Documents/<name>` | keep to a clear path |
| Local model endpoint | env var `<PROFILE>_LOCAL_MODEL_URL` | point at your own machine |
| Mail (IMAP/SMTP) | stored in your mail client (himalaya, etc.) | never in this repo |
| OAuth app tokens | your runtime's connection store (e.g. portal) | not markdown |

## Rules

- Rotate any leaked key immediately.
- Never commit secrets to this repo — `git-secrets` or similar is strongly
  recommended for public shares.
- If you accidentally include a secret, rewrite history and rotate the key in
  the same action.
- Keep per-user state (`memory/`, `sessions/`, `logs/`, `*.db`) **out** of this
  repo. The kit is prompts + config spec, not a runtime home.
