#!/bin/env bash

. vars

body(){
    mute=$(pactl list sinks | grep Mute | awk '{print $2}')
    vol=$(pactl list sinks | grep "Volume: front-left" | tail -n 1 | awk '{print $5}')
    
    # {VAR: :-1} trims the last character from the string
    if [ "$mute" = "yes" ]; then
        icon="\uf026\uf12a"
    elif (( ${vol: :-1} >= 40 )); then
        icon="\uf028"
    elif (( ${vol: :-1} > 0 )); then
        icon="\uf027"
    elif (( ${vol: :-1} == 0 )); then
        icon="\uf026" 
    fi
    
    echo -e "vol$icon $vol" > "$PANEL_FIFO"
}
body

while read -r line; do
    body
done < <(pactl subscribe | grep --line-buffered "sink")
