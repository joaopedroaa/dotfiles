#!/bin/sh
. "$HOME/.config/sketchybar/colors.sh"
. "$HOME/.config/sketchybar/icons.sh"

sketchybar --set $NAME label="$(date '+%a %d %b %H:%M')"
