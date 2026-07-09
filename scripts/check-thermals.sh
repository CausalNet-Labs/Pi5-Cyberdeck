#!/usr/bin/env bash
# check-thermals.sh
# Quick thermal/throttling check, consolidating the commands from
# Chapter 3 (bench validation) and Chapter 8 (assembled thermal testing).
#
# Usage: ./check-thermals.sh [stress_seconds]
# Default stress duration is 600s (10 minutes) if not specified.

set -euo pipefail

DURATION="${1:-600}"

echo "== Current state (idle) =="
vcgencmd measure_temp
vcgencmd get_throttled

echo
echo "== Running stress-ng for ${DURATION}s (install with: sudo apt install stress-ng -y) =="
echo "   Tip: run 'watch -n 2 vcgencmd measure_temp' in a second terminal to watch live."
stress-ng --cpu 4 --timeout "${DURATION}s" --metrics-brief

echo
echo "== Post-stress throttling check =="
echo "   EXPECTED RESULT: must return 0x0 after sustained load"
vcgencmd get_throttled
vcgencmd measure_temp
