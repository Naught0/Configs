#!/bin/env bash

while read -r line; do
    pkill -P $(<bat_percent.pid) sleep
done < <(udevadm monitor -u | grep --line-buffered "AC (power_supply)")
