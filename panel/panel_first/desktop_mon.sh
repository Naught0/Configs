#!/bin/env bash

cd "${0%/*}"

. vars

body() {
    desk=$(herbstclient tag_status)
    echo -e "DESKTOP$(python desktop.py $desk)" > "$PANEL_FIFO"
}
body

while read -r line; do
    body
done < <(herbstclient --idle | grep --line-buffered "tag_changed")
