# Phantom PA Starter

A **portable, self-running Personal Assistant starter kit**.

It gives someone a clean PA skeleton they can claim as their own: a generic
assistant brain, an interview-first onboarding flow, a system-health checklist, an
escalation path, and config templates. **No live data, no secrets, no private
memory** travels with it — the recipient brings their own keys and answers a
short interview to shape the PA's task and identity.

## What it is not

- Not "Monica". Monica is a specific, private person's chief-of-staff. This kit
  is the blank scaffold that lets another person get their own.
- Not a business system. It is a PA layer — your ops layer, on top of whatever
  business tooling that person chooses.

## Quick start

See [00-QUICKSTART.md](00-QUICKSTART.md).

## Layout

```
phantom-pa-starter/
├── README.md
├── 00-QUICKSTART.md
├── SECRETS.md
├── core/
│   ├── AGENTS.md            # PA system prompt (the brain)
│   ├── ROUTING.md           # cheap/capable model routing hints
│   ├── SWITCH.md            # escape/override notes
│   └── skills/
│       ├── core-pa/SKILL.md # always-on identity
│       ├── interview/SKILL.md  # onboarding interview
│       ├── health/SKILL.md    # health-check procedure
│       ├── escalate/SKILL.md  # when to call a bigger model
│       └── escape/SKILL.md    # escape hatch
├── docs/
│   └── ONBOARDING-INTERVIEW.md
├── scripts/
│   ├── health-smoke.sh
│   └── onboarding-checklist.md
└── templates/
    ├── persona-profile.md
    └── daily-note.md
```

## Philosophy

1. **Interview first.** Before the PA takes any real task, it interviews its
   new owner, records the interview in plain markdown, and only becomes active
   after sign-off.
2. **No secrets in the repo.** Keys and tokens live on the recipient's machine,
   in documented file locations. The kit documents *where*, never *what*.
3. **Skills before memory.** Procedures live in `skills/`; memory stays lean and
   project-local. A procedure that is not reusable does not belong here.
4. **Verify before claiming.** A health check is not "installed" until a real
   probe passes.
5. **Never act as the person.** The PA proposes, verifies, and drafts. It sends
   nothing, moves nothing, publishes nothing without explicit approval.

## Post-onboarding

After the interview, the new PA proposes:
- a **name** for itself (chosen by its owner),
- a **task list** tied to measurable outcomes,
- a **scope fence** (what it can and cannot touch),
- a **health baseline** and reporting cadence.

Only after owner sign-off does it stop being "unbound" and take the role.

## Scrub note

This kit keeps names and hostnames as placeholders. If you already know the
recipient and want less friction, substitute real specifics locally before
zipping it up. See `SECRETS.md`.
