#!/bin/env bash

. vars

while :; do
#    net_name="$(trunc.sh -e -l 5 `iwgetid -r`)"
    net_name=""
    percent="$(cat /proc/net/wireless | awk 'NR == 3 {printf "%.0f%%", ($3/70*100)}')"    
    echo -e WIFI"$net_name\uf1eb $percent"
sleep 10
done > "$PANEL_FIFO"
