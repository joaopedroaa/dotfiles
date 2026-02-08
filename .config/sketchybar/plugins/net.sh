#!/bin/bash

# Load colors and icons if needed
source "$HOME/.config/sketchybar/colors.sh"
source "$HOME/.config/sketchybar/icons.sh"

# Define the interface
INTERFACE="en0"

# Get current stats
# "netstat -ibn" gives bytes in/out
# We filter for the interface and grab the 7th and 10th columns (Ibytes, Obytes)
# On macOS netstat -ibn columns: Name Mtu Network Address Ipkts Ierrs Ibytes Opkts Oerrs Obytes Coll
STATS=$(netstat -ibn | grep -m 1 "$INTERFACE")
# Format: Name Mtu Network Address Ipkts Ierrs Ibytes Opkts Oerrs Obytes Coll
# en0   1500  <Link#4>    ...     ...   ...   IN      ...   ...   OUT    ...

BYTES_IN=$(echo "$STATS" | awk '{print $7}')
BYTES_OUT=$(echo "$STATS" | awk '{print $10}')
TIMESTAMP=$(date +%s)

# File to store previous state
STATE_FILE="/tmp/sketchybar_net_state"

if [ -f "$STATE_FILE" ]; then
  read PREV_BYTES_IN PREV_BYTES_OUT PREV_TIMESTAMP < "$STATE_FILE"

  # Calculate deltas
  DELTA_TIME=$((TIMESTAMP - PREV_TIMESTAMP))

  if [ $DELTA_TIME -gt 0 ]; then
    DIFF_IN=$((BYTES_IN - PREV_BYTES_IN))
    DIFF_OUT=$((BYTES_OUT - PREV_BYTES_OUT))

    SPEED_IN=$((DIFF_IN / DELTA_TIME))
    SPEED_OUT=$((DIFF_OUT / DELTA_TIME))
  else
    SPEED_IN=0
    SPEED_OUT=0
  fi
else
  SPEED_IN=0
  SPEED_OUT=0
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
UP_FORMATTED=$(format_speed $SPEED_OUT)

# Update Sketchybar
sketchybar --set $NAME label="↓ $DOWN_FORMATTED ↑ $UP_FORMATTED"

# Save current state
echo "$BYTES_IN $BYTES_OUT $TIMESTAMP" > "$STATE_FILE"
