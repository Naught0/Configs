#!/bin/env bash

. vars

body() {
    lite=$(light -G)
    echo -e "lite\uf0eb ${lite: :-3}%" > "$PANEL_FIFO"
}
body

while read -r line; do
    body
done < <(udevadm monitor -u | grep --line-buffered backlight)
