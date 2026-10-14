# Phantom PA — Quickstart

## 1. Get the kit

```bash
git clone <repo-url> phantom-pa-starter
cd phantom-pa-starter
```

For a private handoff instead of cloning:

```bash
zip -r phantom-pa-starter.zip phantom-pa-starter/ \
  -x '*/__pycache__/*' '*.pyc' '*/.git/*'
```

## 2. Wire it into your assistant

### Prompts-only (recommended)

Paste the following into your assistant's system prompt / skill directory:

- `core/AGENTS.md` → your base system prompt
- `core/ROUTING.md` → context for model routing
- `core/SWITCH.md` → override/escape notes
- `core/skills/*/SKILL.md` → your skill directory, one per subfolder

No Python runtime is needed for this mode.

### Runnable (optional)

`scripts/health-smoke.sh` is a real script and expects the same commands that
any shell has (`curl`, `ping`, `systemctl`). Install it, make it executable, and
run it from your own environment.

## 3. Replace the placeholders

Search for `<...>` and replace with your own values:

```bash
grep -R "<" core/ docs/ templates/ scripts/ | head
```

- Home paths, IP addresses, hostnames → your own
- Optional but handy to set up before launch:
  - GitHub PAT: store at `~/.config/github/token`
  - Model provider key: store as instructed by your assistant runtime
  - Vault path: your Obsidian vault folder

Full list: [SECRETS.md](SECRETS.md).

## 4. First session — interview mode

Do not ask the PA for real work yet. Start with:

> "You are newly bound. Interview me, one question at a time, before taking
> any task."

The interview script is in [docs/ONBOARDING-INTERVIEW.md](docs/ONBOARDING-INTERVIEW.md).
When the interview finishes, the PA produces a persona profile (see
[templates/persona-profile.md](templates/persona-profile.md)) and a day-one
task list. **You sign off before anything ships.**

## 5. Health check

Prove the wiring is real before trusting it:

```bash
bash scripts/health-smoke.sh
```

A failed probe is not "installed". Fix the failing line, rerun, and record the
result in your daily note.

## 6. Run it as your PA

Once the above passes, start using it for small, reversible tasks first. Add
billing/customer work only after you trust the health loop and the interview
record.
