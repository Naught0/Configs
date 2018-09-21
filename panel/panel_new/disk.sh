#!/bin/env bash

. vars

while :; do
    echo -e "disk\uf0a0 $(df /dev/mmcblk0p2 -h | tail -1 | awk '{print $5}')"
    sleep $(echo "5 * 60" | bc)
done > "$PANEL_FIFO"
 
