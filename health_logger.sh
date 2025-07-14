#!/bin/bash

# --------- Setup ---------
LOG_DIR="./logs"
DATE=$(date '+%Y-%m-%d %H:%M:%S')
FILENAME=$(date '+%Y-%m-%d').log

mkdir -p "$LOG_DIR"  # Make sure logs folder exists

# --------- Start Logging ---------
{
  echo "==============================="
  echo "📅 Date: $DATE"
  echo "🖥️ Uptime:"
  uptime
  echo ""

  echo "💾 Memory Usage:"
  free -h
  echo ""

  echo "💽 Disk Usage:"
  df -h | grep '^/dev'
  echo ""

  echo "👤 Logged-in Users:"
  who
  echo "==============================="
  echo ""
} >> "$LOG_DIR/$FILENAME"

echo "✅ System health logged to $LOG_DIR/$FILENAME"
