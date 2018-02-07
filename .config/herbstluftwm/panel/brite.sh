#!/bin/env bash

while read -r line; do
    echo brite: $(printf "%.0f" $(cat light_mon.log))%
done < <(tail -F light_mon.log 2> /dev/null)
