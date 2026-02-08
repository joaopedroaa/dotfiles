#!/bin/sh

. "$HOME/.config/sketchybar/colors.sh"
. "$HOME/.config/sketchybar/icons.sh"

VOLUME=$(osascript -e "output volume of (get volume settings)")
MUTED=$(osascript -e "output muted of (get volume settings)")

if [ "$MUTED" != "false" ]; then
  ICON="$VOLUME_0"
  COLOR=$RED
elif [ $VOLUME -lt 10 ]; then
  ICON="$VOLUME_10"
  COLOR=$WHITE
elif [ $VOLUME -lt 33 ]; then
  ICON="$VOLUME_33"
  COLOR=$WHITE
elif [ $VOLUME -lt 66 ]; then
  ICON="$VOLUME_66"
  COLOR=$WHITE
else
  ICON="$VOLUME_100"
  COLOR=$WHITE
fi

sketchybar --set $NAME icon="$ICON" label="$VOLUME%" icon.color=$COLOR
