#!/bin/bash

source "$HOME/.config/sketchybar/colors.sh"
source "$HOME/.config/sketchybar/icons.sh"

# WiFi Status
SSID=$(/usr/sbin/ipconfig getsummary en0 | awk -F ' SSID : '  '/ SSID : / {print $2}')

if [ "$SSID" = "" ]; then
  # Disconnected
  sketchybar --set $NAME label="" icon=$WIFI_DISCONNECTED icon.color=$GREY
else
  # Connected - Calculate Speed
  INTERFACE="en0"
  STATS=$(netstat -ibn | grep -m 1 "$INTERFACE")
  BYTES_IN=$(echo "$STATS" | awk '{print $7}')
  TIMESTAMP=$(date +%s)
  STATE_FILE="/tmp/sketchybar_wifi_net_state"

  if [ -f "$STATE_FILE" ]; then
    read PREV_BYTES_IN PREV_TIMESTAMP < "$STATE_FILE"
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

  # Format Speed
  if [ $SPEED_IN -lt 1024 ]; then
    DOWN_FORMATTED="${SPEED_IN}B/s"
  elif [ $SPEED_IN -lt 1048576 ]; then
    DOWN_FORMATTED="$(echo "scale=1; $SPEED_IN / 1024" | bc)KB/s"
  else
    DOWN_FORMATTED="$(echo "scale=1; $SPEED_IN / 1048576" | bc)MB/s"
  fi

  sketchybar --set $NAME label="$DOWN_FORMATTED" icon=$WIFI_CONNECTED icon.color=$TEAL

  # Save State
  echo "$BYTES_IN $TIMESTAMP" > "$STATE_FILE"
fi
