#!/bin/env bash

. vars

while :; do 
    echo -e "mem$sep$(free -m | sed -ne 2p | awk '{print $3}')MB"
sleep 10
done > "$PANEL_FIFO"
