#!/bin/env bash

. vars

# This echos the PID of the script to bat_percent.pid
# I can then run pkill -P $(<bat_percent.pid) sleep
# To exit the sleep early
# Another script monitoring udev will terminate the sleep
# Whenever AC power is plugged in
echo $$ > bat_percent.pid

while :; do
    bat="$(acpi | awk '{print $4}' | tr -d ',')"
    rem="$(acpi | awk '{print $5}' | rev | cut -c 4- | rev)"
    power="$(cat /sys/class/power_supply/AC/online)"

    if [[ $power = 0 ]]; then
        charging=""
    else
        charging="\uf0e7 "
    fi
    
    if (( ${bat: :-1} >= 95 )); then
        icon="\uf240"
    elif (( ${bat: :-1} >= 75 )); then
        icon="\uf241"
    elif (( ${bat: :-1} >= 50 )); then
        icon="\uf242"
    elif (( ${bat: :-1} >= 25)); then
        icon="\uf243"
    else
        # Make this one red
        icon="%{F#dd543a}\uf244%{F-}"
    fi
    
    echo -e "bat%{A:bat_notif.sh:}$icon $charging$bat%{A}"
    sleep 60
done > "$PANEL_FIFO"
