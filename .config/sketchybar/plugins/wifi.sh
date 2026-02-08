#!/bin/sh

. "$HOME/.config/sketchybar/colors.sh"
. "$HOME/.config/sketchybar/icons.sh"

# Get SSID
SSID=$(/usr/sbin/ipconfig getsummary en0 | awk -F ' SSID : '  '/ SSID : / {print $2}')
IP=$(ipconfig getifaddr en0)

if [ "$SSID" = "" ]; then
  sketchybar --set $NAME label="Disconnected" icon=$WIFI_DISCONNECTED
else
  sketchybar --set $NAME label="$IP" icon=$WIFI_CONNECTED
fi
