#!/bin/bash
# Daily content research pipeline runner for meeko.tech.
# Invoked by launchd (com.user.daily-research) at 07:00 Europe/Warsaw daily.
#
# Flow:
#   1. cd to repo
#   2. git pull --rebase
#   3. claude --print "/daily-research" (Claude runs entire pipeline incl. commit+push)
#   4. Log to ~/Library/Logs/daily-research-{date}.log
#
# Logs are timestamped per day. Old logs auto-pruned after 30 days (cron-side).

set -u

REPO="$HOME/content-studio"
LOG_DIR="$HOME/Library/Logs"
TODAY=$(date +%Y-%m-%d)
LOG_FILE="$LOG_DIR/daily-research-$TODAY.log"
MODEL="claude-opus-4-7"

mkdir -p "$LOG_DIR"

{
  echo "===================================================="
  echo "Daily research pipeline — started $(date)"
  echo "===================================================="
  echo

  cd "$REPO" || { echo "FATAL: cannot cd to $REPO"; exit 1; }

  echo "--- git pull ---"
  git pull --rebase --autostash origin main 2>&1
  echo

  echo "--- claude --print /daily-research ---"
  claude --print \
    --permission-mode bypassPermissions \
    --model "$MODEL" \
    "/daily-research" 2>&1
  CLAUDE_EXIT=$?
  echo
  echo "Claude exit code: $CLAUDE_EXIT"
  echo

  echo "--- final git state ---"
  git log --oneline -3 2>&1
  echo

  echo "===================================================="
  echo "Daily research pipeline — finished $(date)"
  echo "===================================================="

  # Prune logs older than 30 days
  find "$LOG_DIR" -name "daily-research-*.log" -mtime +30 -delete 2>/dev/null || true

  exit $CLAUDE_EXIT
} >> "$LOG_FILE" 2>&1
