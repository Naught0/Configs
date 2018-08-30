#!/bin/env bash
. vars

while :; do
    echo -e "TIME\uf073 $(date +%D) \uf017 $(date +%H:%M)"
sleep 45
done > "$PANEL_FIFO" 
