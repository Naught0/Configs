#!/bin/env bash

cd "${0%/*}"

. vars

while read -r line; do
    desk=$(herbstclient tag_status)
    echo -e "DESKTOP$(python desktop.py $desk)"
done < <(herbstclient --idle) > "$PANEL_FIFO"
