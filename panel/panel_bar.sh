#!/bin/env bash

. vars

while read -r line; do
    case $line in
        TIME*)
            time="$MAGENTA$PAD${line#????}$PAD$OFF"
            ;;
        bat*)
            bat="$BLUE$PAD${line}$PAD$OFF"
            ;;
        lite*)
            lite="$LYELLOW$PAD${line}$PAD$OFF"
            ;;
        disk*)
            disk="$YELLOW$PAD${line}$PAD$OFF"
            ;;
        vol*)
            vol="$DYELLOW$PAD${line}$PAD$OFF"
            ;;
        cpu*)
            cpu="$LCYAN$PAD${line}$PAD$OFF"
            ;;
        DESKTOP*)
            desk="$CYAN${line#???????}$PAD$OFF"
            ;;
    esac

    printf "%s\n" "$LEFT${desk}$CENTER${time}$RIGHT${disk}${vol}${lite}${cpu}${bat}"
done

