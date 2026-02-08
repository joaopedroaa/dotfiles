#!/usr/bin/env bash

# Battery Script

. "$HOME/.config/sketchybar/colors.sh"
. "$HOME/.config/sketchybar/icons.sh"

PERCENTAGE=$(pmset -g batt | grep -o "[0-9]\{1,3\}%" | cut -d% -f1)
CHARGING=$(pmset -g batt | grep 'AC Power')

if [ "$PERCENTAGE" = "" ]; then
  exit 0
fi

if [[ "$CHARGING" != "" ]]; then
  ICON="$BATTERY_CHARGING"
  COLOR="$YELLOW"
else
  case ${PERCENTAGE} in
    9[0-9]|100) ICON="$BATTERY_100"; COLOR="$GREEN" ;;
    [6-8][0-9]) ICON="$BATTERY_75"; COLOR="$GREEN" ;;
    [3-5][0-9]) ICON="$BATTERY_50"; COLOR="$YELLOW" ;;
    [1-2][0-9]) ICON="$BATTERY_25"; COLOR="$ORANGE" ;;
    *) ICON="$BATTERY_0"; COLOR="$RED" ;;
  esac
fi

sketchybar --set $NAME icon="$ICON" icon.color="$COLOR" label="${PERCENTAGE}%"
