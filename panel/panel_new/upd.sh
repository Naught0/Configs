#!/bin/env bash

. vars

show_updates(){
    icon="\uf0ee"
    pkg_string=$(grep -oP "(?<=IgnorePkg   = ).*" /etc/pacman.conf)
    IFS=" "
    read -r -a pkg_arr <<< $pkg_string
    echo -e "UPD$icon $(( ${#pkg_arr[@]} - 1 ))" 
}
#show_updates

while :; do
    show_updates
    sleep $(( 60 * 60 * 3 ))
done
