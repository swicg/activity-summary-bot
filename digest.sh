#!/usr/bin/env bash
# Lint specified *.sh files or with-shebang in the repo.

set -euo pipefail
set -a

cd /home/summarybot/github-notify-ml
# Load python: 
source "$PWD/.venv/bin/activate"

ENV_FILE="instance/.env"
if test -f "$ENV_FILE"; then
  source $ENV_FILE
else
  print "env file not found: $ENV_FILE"
fi

python3 index.py Sunday
