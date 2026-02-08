#!/bin/sh

. "$HOME/.config/sketchybar/colors.sh"
. "$HOME/.config/sketchybar/icons.sh"

CORE_COUNT=$(sysctl -n machdep.cpu.core_count)
CPU_INFO=$(ps -A -o %cpu | awk '{s+=$1} END {print s}')
CPU_PERCENT=$(echo "$CPU_INFO / $CORE_COUNT" | bc)

sketchybar --set $NAME label="${CPU_PERCENT%.*}%"
