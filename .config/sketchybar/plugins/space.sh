#!/bin/sh

# The sketchybarrc configures the default space items.
# This script is called when a space is selected.

. "$HOME/.config/sketchybar/colors.sh"

if [ "$SELECTED" = "true" ]; then
  sketchybar --animate sin 10 --set $NAME \
    background.drawing=on \
    background.color=$ACCENT_COLOR \
    icon.color=$BLACK
else
  sketchybar --animate sin 10 --set $NAME \
    background.drawing=off \
    background.color=$TRANSPARENT \
    icon.color=$WHITE
fi
