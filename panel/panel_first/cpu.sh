#!/bin/env bash

. vars

while :; do
    dank=$( top -b 1 -n 1 | awk '{if (NR == 3 || NR == 4) print $3,$5}' | paste -s | sed -e 's/[[:space:]]/+/g' | bc)
    cpu=$(echo -e "${dank} / 2" | bc)
    printf -v padded "%3d%%" $cpu
    echo -e "cpu\uf2db$padded"
sleep 2
done > "$PANEL_FIFO"
