#!/bin/env bash

. vars

echo -e "cpu\uf2db 0.0%" > "$PANEL_FIFO"
while :; do
    cpu=$(mpstat 3 1 | awk 'NR == 5 {printf "%.1f%%", 100-$12}')
    echo -e "cpu\uf2db $cpu"
done > "$PANEL_FIFO"
