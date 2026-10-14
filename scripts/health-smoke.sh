#!/usr/bin/env bash
# health-smoke.sh — minimal probe. Edit to match the recipient's stack.

set -u
echo "── Phantom PA — health smoke (edit this file per host) ──"
echo "time: $(date)"

# Disk (home)
df -h "$HOME" | tail -1

# A single named process (example only; replace and rerun)
if pgrep -x bash >/dev/null; then
  echo "[ok] bash process present (placeholder probe)"
else
  echo "[warn] (replace with a process that should be there)"
fi

# Local model endpoint (optional)
LOCAL_MODEL_URL="${PHANTOM_PA_LOCAL_MODEL_URL:-}"
if [ -n "$LOCAL_MODEL_URL" ]; then
  curl -sS --max-time 3 "$LOCAL_MODEL_URL" >/dev/null && echo "[ok] local model reachable" || echo "[warn] local model unreachable"
else
  echo "[warn] PHANTOM_PA_LOCAL_MODEL_URL not set"
fi

echo
echo "Probes complete. Record the result in the daily note."
