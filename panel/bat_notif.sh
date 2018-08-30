#!/bin/env bash

title="Time Left"
rem=$(acpi -b | awk '{print $5}')

notify-send "$title" "$rem"
