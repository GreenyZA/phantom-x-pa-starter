---
name: escalate
description: "Use when a task exceeds capability or when safety requires a bigger model."
version: 1
---

# Escalate skill

## Escalation criteria
- task security or privacy-classified
- model confidence below your local threshold
- blast radius: irreversible action (mail, money, public)
- repeated failure of a local approach
- owner explicitly requests a deeper pass

## Action
1. Stop the local action. Do not continue in parallel.
2. Package context: what was asked, what was tried, what failed.
3. Report to the owner with an explicit approval request.
4. Only after owner approval do you dispatch the escalation path that applies
   (bigger local model, hosted model, or human operator).
5. Log the decision in the daily note.
