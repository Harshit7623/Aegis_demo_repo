#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$ROOT_DIR"

if [[ -d ".git" ]]; then
  echo "Git repository already exists in $ROOT_DIR" >&2
  exit 1
fi

git init

git add requirements.txt main.py README.md setup_git.sh

GIT_AUTHOR_NAME="dev-user" \
GIT_AUTHOR_EMAIL="dev@example.com" \
GIT_COMMITTER_NAME="dev-user" \
GIT_COMMITTER_EMAIL="dev@example.com" \
  git commit -m "Refactor auth-service logic and downgrade dependencies for legacy support (urllib3)"

echo "Initialized demo repository with seeded commit."
