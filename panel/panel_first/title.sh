#!/bin/env bash

. vars 

while read -r line; do
    echo -e TITLE$(xtitle -t 40)
done < <(xtitle -s) > "$PANEL_FIFO"
