#!/bin/sh

. "$HOME/.config/sketchybar/colors.sh"
. "$HOME/.config/sketchybar/icons.sh"

PERCENTAGE=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)
CHARGING=$(pmset -g batt | grep 'AC Power')

if [ $PERCENTAGE = "" ]; then
  exit 0
fi

COLOR=$GREEN

if [ $PERCENTAGE -lt 20 ]; then
  COLOR=$RED
  ICON=$BATTERY_0
elif [ $PERCENTAGE -lt 50 ]; then
  COLOR=$ORANGE
  ICON=$BATTERY_25
elif [ $PERCENTAGE -lt 75 ]; then
  COLOR=$YELLOW
  ICON=$BATTERY_50
else
  ICON=$BATTERY_75
fi

if [ "$CHARGING" != "" ]; then
  ICON=$BATTERY_CHARGING
  COLOR=$GREEN
fi

sketchybar --set $NAME icon="$ICON" label="${PERCENTAGE}%" icon.color=$COLOR
