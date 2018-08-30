#!/bin/env bash

# CD into the cwd so that it knows where my scripts are
cd "${0%/*}"

. vars

# Make da fifo if required
# Acquired from hither:
# https://github.com/baskerville/bspwm/blob/master/examples/panel/panel
[ -e "$PANEL_FIFO" ] && rm "$PANEL_FIFO"
mkfifo "$PANEL_FIFO"

# This will (hopefully) kill all the scripts when the panel exits
# trap 'trap - TERM; kill 0' INT TERM QUIT # this doesn't work for me idk why
trap "trap - SIGTERM && kill -- -$$" SIGINT SIGTERM EXIT

./bat_percent.sh &
./brite.sh &
./disk.sh & 
./cpu.sh & 
./vol.sh &
./mem.sh & 
./title.sh &
./desktop_mon.sh &
./time.sh &

./panel_bar.sh < "$PANEL_FIFO" | lemonbar \
    -p \
    -f "IBM Plex Mono Medium-8.5" -o 0 \
    -f "FontAwesome-11" -o 0 \
    -B "$background" -F "$foreground" \
    -g $(xrandr | grep current | awk '{print $8}')x"$HEIGHT" | bash

wait 
