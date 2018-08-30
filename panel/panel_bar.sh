#!/bin/env bash

. vars

while read -r line; do
    case $line in
        DESKTOP*)
            desk="$PAD${line#???????}$PAD"
            ;;
        TITLE*)
            title="$PAD${line#?????}$PAD"
            ;;
        TIME*)
            time="$PAD${line#????}$PAD"
            ;;
        WIFI*)
            net="${line#????}$PAD"
            ;;
        disk*)
            disk="${line#????}$PAD"
            ;;
        vol*)
            vol="${line#???}$PAD"
            ;;
        lite*)
            lite="$pad${line#????}$PAD"
            ;;
        mem*)
            mem="${line#???}$PAD"
            ;;
        cpu*)
            cpu="${line#???}$PAD"
            ;;
        bat*)
            bat="${line#???}$PAD"
            ;;
    esac

    printf "%s\n" "$PRIMARY$LEFT${desk}${title}$OFF$CENTER${time}$RIGHT$SECONDARY${net}${disk}${vol}${lite}${mem}${cpu}${bat}$OFF"
done

