#!/bin/env bash
. vars

while :; do
    echo -e "TIME\uf073 $(date +%D) \uf017 $(date +%I:%M)"
sleep 45
done > "$PANEL_FIFO" 
