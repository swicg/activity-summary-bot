#!/usr/bin/env bash
# Pull latest config and send the weekly activity digest.

set -euo pipefail
set -a

cd /home/summarybot/github-notify-ml
source "$PWD/.venv/bin/activate"

ENV_FILE="instance/.env"
if test -f "$ENV_FILE"; then
  source "$ENV_FILE"
else
  echo "env file not found: $ENV_FILE" >&2
  exit 1
fi

python3 test-email.py "emelia@brandedcode.com"

