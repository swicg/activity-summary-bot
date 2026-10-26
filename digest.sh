#!/usr/bin/env bash
# Pull latest config and send the weekly activity digest.

set -euo pipefail
set -a

cd /home/summarybot/github-notify-ml
source "$PWD/.venv/bin/activate"

if ! git -C instance pull --ff-only --quiet; then
  echo "warning: config pull failed, using existing config" >&2
fi

ENV_FILE="instance/.env"
if test -f "$ENV_FILE"; then
  source "$ENV_FILE"
else
  echo "env file not found: $ENV_FILE" >&2
  exit 1
fi

python3 index.py "$(LC_ALL=C date +%A)"
