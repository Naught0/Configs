#!/bin/env bash

. vars

while read -r line; do
    case $line in
        DESKTOP*)
            desk="$PRIMARY_BG$PAD${line#???????}$PAD$OFF$TRANS_PAD"
            ;;
        TITLE*)
            title="$SECONDARY_BG$PAD${line#?????}$PAD$TRANS_PAD"
            ;;
        TIME*)
            time="$TERTIARY_BG$PAD${line#????}$PAD$OFF$TRANS_PAD"
            ;;
        WIFI*)
            net="$SECONDARY_BG$PAD${line#????}$PAD$OFF$TRANS_PAD"
            ;;
        disk*)
            disk="$PRIMARY_BG$PAD${line#????}$PAD$OFF$TRANS_PAD"
            ;;
        vol*)
            vol="$SECONDARY_BG$PAD${line#???}$PAD$OFF$TRANS_PAD"
            ;;
        lite*)
            lite="$PRIMARY_BG$PAD${line#????}$PAD$OFF$TRANS_PAD"
            ;;
        mem*)
            mem="$SECONDARY_BG$PAD${line#???}$PAD$OFF$TRANS_PAD"
            ;;
        cpu*)
            cpu="$PRIMARY_BG$PAD${line#???}$PAD$OFF$TRANS_PAD"
            ;;
        bat*)
            bat="$SECONDARY_BG$PAD${line#???}$PAD$OFF"
            ;;
    esac

    printf "%s\n" "$LEFT${desk}${title}$OFF$CENTER${time}$RIGHT${net}${disk}${vol}${lite}${mem}${cpu}${bat}$OFF"
done

