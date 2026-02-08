#!/usr/bin/env bash

# Volume Script

. "$HOME/.config/sketchybar/colors.sh"
. "$HOME/.config/sketchybar/icons.sh"

VOLUME=$(osascript -e "output volume of (get volume settings)")
MUTED=$(osascript -e "output muted of (get volume settings)")

if [[ "$MUTED" != "false" ]]; then
  ICON="$VOLUME_0"
  COLOR="$GREY"
else
  case ${VOLUME} in
    100) ICON="$VOLUME_100"; COLOR="$PINK" ;;
    [6-9][0-9]) ICON="$VOLUME_100"; COLOR="$PINK" ;;
    [3-5][0-9]) ICON="$VOLUME_66"; COLOR="$PINK" ;;
    [1-2][0-9]) ICON="$VOLUME_33"; COLOR="$PINK" ;;
    [1-9]) ICON="$VOLUME_10"; COLOR="$PINK" ;;
    0) ICON="$VOLUME_0"; COLOR="$GREY" ;;
    *) ICON="$VOLUME_100"; COLOR="$PINK" ;;
  esac
fi

sketchybar --set $NAME icon="$ICON" icon.color="$COLOR" label="$VOLUME%"
