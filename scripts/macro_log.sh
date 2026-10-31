#!/usr/bin/env bash
set -euo pipefail

LOG="${HOME}/printer_data/logs/macro_messages.log"
mkdir -p "$(dirname "$LOG")"

# timestamp + everything passed from Klipper
printf '[%s %s\n' "$(date -Iseconds)"\] "$*" >> "$LOG"
