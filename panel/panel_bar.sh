#!/bin/env bash

. vars

while read -r line; do
    case $line in
        TIME*)
            time="$PAD${line#????}$PAD"
            ;;
        bat*)
            bat="$PAD${line}$PAD"
            ;;
        lite*)
            lite="$PAD${line}$PAD"
            ;;
        disk*)
            disk="$PAD${line}$PAD"
            ;;
        vol*)
            vol="$PAD${line}$PAD"
            ;;
        cpu*)
            cpu="$PAD${line}$PAD"
            ;;
        mem*)
            mem="$PAD${line}$PAD"
            ;;
        DESKTOP*)
            desk="${line#???????}$PAD"
            ;;
        TITLE*)
            title="$PAD${line#?????}$PAD"
    esac

    printf "%s\n" "$LMAGENTA$LEFT${desk}${title}$OFF$CENTER${time}$RIGHT$YELLOW${disk}${vol}${lite}${mem}${cpu}${bat}$OFF"
done

