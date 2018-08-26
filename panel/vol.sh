#!/bin/env bash

. vars

while read -r line; do
    mute=$(pactl list sinks | grep Mute | tail -n 1 | awk '{print $2}')
    if [[ "$mute" == "yes" ]]
    then
        echo -e vol"$sep"---
    else
        echo -e vol$sep$(pactl list sinks | grep "Volume: front-left" | tail -n 1 | awk '{print $5}') > "$PANEL_FIFO"
    fi
done < <(pactl subscribe | grep --line-buffered "sink") > "$PANEL_FIFO"
