#!/bin/env bash

. vars

while :; do
    echo -e "cpu$sep$(ps -A -o pcpu | tail -n+2 | paste -sd+ | bc)%"
sleep 2
done > "$PANEL_FIFO"
