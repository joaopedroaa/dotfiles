#!/bin/sh

. "$HOME/.config/sketchybar/colors.sh"
. "$HOME/.config/sketchybar/icons.sh"

APP_NAME=$(yabai -m query --windows --window | jq -r '.app')

if [ "$APP_NAME" = "" ]; then
  APP_NAME="Desktop"
fi

sketchybar --set $NAME label="$APP_NAME"
