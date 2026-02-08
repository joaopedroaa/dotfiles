#!/bin/sh

PERCENTAGE=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)
CHARGING=$(pmset -g batt | grep 'AC Power')

if [ $PERCENTAGE = "" ]; then
  exit 0
fi

COLOR=0xff50fa7b # Verde

if [ $PERCENTAGE -lt 20 ]; then
  COLOR=0xffff5555 # Vermelho
elif [ $PERCENTAGE -lt 50 ]; then
  COLOR=0xffffb86c # Laranja
fi

ICON=""
if [ "$CHARGING" != "" ]; then
  ICON=""
fi

sketchybar --set $NAME icon="$ICON" label="${PERCENTAGE}%" icon.color=$COLOR
