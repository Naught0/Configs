#!/bin/env bash

. vars

while :; do 
    echo -e "mem\uf12e $(free -m | sed -ne 2p | awk '{print $3}')MiB"
sleep 10
done > "$PANEL_FIFO"
