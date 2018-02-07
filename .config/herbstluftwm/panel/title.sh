#!/bin/env bash

while read -r line; do
    title=$(xtitle)
    if [ ${#title} -ge 50 ]
    then 
        echo $(xtitle | cut -c -60)...
    else
        echo $(xtitle)
    fi
done < <(xtitle -s)
