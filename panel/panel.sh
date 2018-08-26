#!/bin/env bash

. vars

# Make da fifo if required
# Acquired from hither:
# https://github.com/baskerville/bspwm/blob/master/examples/panel/panel
[ -e "$PANEL_FIFO" ] && rm "$PANEL_FIFO"
mkfifo "$PANEL_FIFO"

./bat_percent.sh &
./brite.sh &
./disk.sh & 
./cpu.sh &
./vol.sh &
./desktop_mon.sh &
./time.sh &

./panel_bar.sh < "$PANEL_FIFO" | lemonbar -p -f "IBM Plex Mono Medium-8","Unifont-9"\
    -B "#101010" -F "#efefef" -g $(xrandr | grep current | awk '{print $8}')x16 | bash

wait 
