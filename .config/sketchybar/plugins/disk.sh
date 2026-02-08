#!/bin/bash

. "$HOME/.config/sketchybar/colors.sh"
. "$HOME/.config/sketchybar/icons.sh"

# Use /bin/df to avoid aliases
DISK_PERCENT=$(/bin/df -H / | grep -vE '^Filesystem' | awk '{ print $5 }' | sed 's/%//')

sketchybar --set $NAME label="$DISK_PERCENT%" icon=$DISK icon.color=$MAGENTA
