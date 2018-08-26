#!/bin/env bash

. vars

while read -r line; do
    echo -e DESKTOP$(herbstclient tag_status)
done < <(herbstclient --idle) > "$PANEL_FIFO"
