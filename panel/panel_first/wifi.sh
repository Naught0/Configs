#!/bin/env bash

. vars

while :; do
    net_name="$(iwgetid -r)"
    signal_raw="$(cat /proc/net/wireless | awk 'NR == 3 {print $3}')"    
    signal="${signal_raw: :-1}/70"
    percent=$(python -c "print(f'{${signal}:.0%}')")
    
    echo -e WIFI"$net_name \uf1eb ${percent}"
sleep 10
done > "$PANEL_FIFO"
