#!/bin/sh

# Colors
BACKGROUND_ACTIVE=0xff44475a
BACKGROUND_INACTIVE=0x00000000
ICON_ACTIVE=0xfff8f8f2
ICON_INACTIVE=0xff6272a4

if [ "$SELECTED" = "true" ]; then
  sketchybar --animate sin 10 --set $NAME \
    background.drawing=on \
    background.color=$BACKGROUND_ACTIVE \
    icon.color=$ICON_ACTIVE
else
  sketchybar --animate sin 10 --set $NAME \
    background.drawing=off \
    background.color=$BACKGROUND_INACTIVE \
    icon.color=$ICON_INACTIVE
fi
