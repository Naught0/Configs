#!/bin/env bash

. vars

while :; do
    echo -e "disk$sep$(df /dev/mmcblk0p2 -h | tail -1 | awk '{print $5}')"
sleep 3600
done > "$PANEL_FIFO"
 
