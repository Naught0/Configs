#!/bin/env bash

. vars

while read -r line; do
    echo -e lite$sep$(printf "%.0f" $(cat light_mon.log))%
done < <(tail -F light_mon.log 2> /dev/null) > "$PANEL_FIFO"
