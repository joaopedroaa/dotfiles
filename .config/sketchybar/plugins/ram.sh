#!/bin/bash

. "$HOME/.config/sketchybar/colors.sh"
. "$HOME/.config/sketchybar/icons.sh"

# Page size is usually 16384 on Apple Silicon, but we can fetch it dynamically or just use vm_stat pages
# vm_stat reports in pages.
# Total Memory in Pages = hw.memsize / pagesize

PAGESIZE=$(pagesize)
TOTAL_MEM=$(sysctl -n hw.memsize)
TOTAL_PAGES=$(($TOTAL_MEM / $PAGESIZE))

# Get pages used
# We sum Active + Wired + Compressor
VM_STAT=$(vm_stat)
PAGES_ACTIVE=$(echo "$VM_STAT" | grep "Pages active" | awk '{print $3}' | sed 's/\.//')
PAGES_WIRED=$(echo "$VM_STAT" | grep "Pages wired down" | awk '{print $4}' | sed 's/\.//')
PAGES_COMPRESSED=$(echo "$VM_STAT" | grep "Pages occupied by compressor" | awk '{print $5}' | sed 's/\.//')

USED_PAGES=$(($PAGES_ACTIVE + $PAGES_WIRED + $PAGES_COMPRESSED))
USED_PERCENT=$(( ($USED_PAGES * 100) / $TOTAL_PAGES ))

sketchybar --set $NAME label="$USED_PERCENT%" icon=$MEMORY icon.color=$BLUE
