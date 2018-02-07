#!/bin/env bash

desktops(){
    echo $(herbstclient tag_status)
}

while read -r line; do
    echo $(herbstclient tag_status)
done < <(herbstclient --idle)
