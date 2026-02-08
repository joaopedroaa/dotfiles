#!/bin/sh

VOLUME=$(osascript -e "output volume of (get volume settings)")
MUTED=$(osascript -e "output muted of (get volume settings)")

ICON=""
if [ "$MUTED" != "false" ]; then
  ICON=""
elif [ $VOLUME -lt 30 ]; then
  ICON=""
elif [ $VOLUME -lt 1 ]; then
  ICON=""
fi

sketchybar --set $NAME icon="$ICON" label="$VOLUME%"
