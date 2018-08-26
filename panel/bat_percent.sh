#!/bin/env bash

. vars

while :; do
    bat="$(acpi | awk '{print $4}' | tr -d ',')"
    rem="$(acpi | awk '{print $5}' | rev | cut -c 4- | rev)"

    if [[ "$bat" == "100%" ]]
    then
        echo -e bat$sep"$bat"
    else
        echo -e bat$sep"$bat"\("$rem"\)
    fi
    
    sleep 60
done > "$PANEL_FIFO"
