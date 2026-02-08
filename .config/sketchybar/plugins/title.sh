#!/bin/sh

# Pega o nome do app focado
APP_NAME=$(yabai -m query --windows --window | jq -r '.app')
# Se quiser o título da janela (pode ser muito longo), troque '.app' por '.title'

if [ "$APP_NAME" = "" ]; then
  APP_NAME="Desktop"
fi

sketchybar --set $NAME label="$APP_NAME"
