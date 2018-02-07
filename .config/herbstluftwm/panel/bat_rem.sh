#!/bin/env bash

bat="$(acpi | awk '{print $4}')"


while :; do
    if [[ "$bat" == "100%" ]]
    then
        echo -n
    else
        echo " rem: $(acpi | awk '{print $5}' | tr -d ',')"
    fi
sleep 30s
done
