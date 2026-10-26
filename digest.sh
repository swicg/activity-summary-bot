#!/usr/bin/env bash
# Lint specified *.sh files or with-shebang in the repo.

set -euo pipefail
set -a

cd /home/summarybot/github-notify-ml
# Load python: 
source "$PWD/.venv/bin/activate"

if ! git -C instance pull --ff-only --quiet; then
  echo "warning: config pull failed, using existing config" >&2
fi

ENV_FILE="instance/.env"
if test -f "$ENV_FILE"; then
  source $ENV_FILE
else
  print "env file not found: $ENV_FILE"
fi

python3 index.py "$(LC_ALL=C date +%A)"
