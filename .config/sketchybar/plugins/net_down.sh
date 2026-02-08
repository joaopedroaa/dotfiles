#!/bin/bash

# Load colors and icons if needed
source "$HOME/.config/sketchybar/colors.sh"
source "$HOME/.config/sketchybar/icons.sh"

# Define the interface
INTERFACE="en0"

# Get current stats
STATS=$(netstat -ibn | grep -m 1 "$INTERFACE")
BYTES_IN=$(echo "$STATS" | awk '{print $7}')
TIMESTAMP=$(date +%s)

# File to store previous state
STATE_FILE="/tmp/sketchybar_net_down_state"

if [ -f "$STATE_FILE" ]; then
  read PREV_BYTES_IN PREV_TIMESTAMP < "$STATE_FILE"

  # Calculate deltas
  DELTA_TIME=$((TIMESTAMP - PREV_TIMESTAMP))

  if [ $DELTA_TIME -gt 0 ]; then
    DIFF_IN=$((BYTES_IN - PREV_BYTES_IN))
    SPEED_IN=$((DIFF_IN / DELTA_TIME))
  else
    SPEED_IN=0
  fi
else
  SPEED_IN=0
fi

# Function to format speed
format_speed() {
  local speed=$1
  if [ $speed -lt 1024 ]; then
    echo "${speed}B/s"
  elif [ $speed -lt 1048576 ]; then
    echo "$(echo "scale=1; $speed / 1024" | bc)KB/s"
  else
    echo "$(echo "scale=1; $speed / 1048576" | bc)MB/s"
  fi
}

DOWN_FORMATTED=$(format_speed $SPEED_IN)

# Update Sketchybar
sketchybar --set $NAME label="↓ $DOWN_FORMATTED"

# Save current state
echo "$BYTES_IN $TIMESTAMP" > "$STATE_FILE"
