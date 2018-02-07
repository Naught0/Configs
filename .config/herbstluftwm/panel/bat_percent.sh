#!/bin/env bash

while :; do
    echo bat: $(acpi | awk '{print $4}' | tr -d ',')
sleep 60s
done
