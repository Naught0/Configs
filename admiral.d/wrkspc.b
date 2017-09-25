#!/bin/bash

E="%{F#151721}"
Z="%{F-}"
echo -n "$E"

SPACE=$(bspc query -D -m DP-4 -d | awk '{print substr($0,length,1)}');
case "$SPACE" in
    "6")
        echo -n "$Z⬤$E ⬤ ⬤ ⬤ ⬤ ⬤ ⬤";;
    "0")
        echo -n "⬤ $Z⬤$E ⬤ ⬤ ⬤ ⬤ ⬤";;
    "1")
        echo -n "⬤ ⬤ $Z⬤$E ⬤ ⬤ ⬤ ⬤";;
    "2")
        echo -n "⬤ ⬤ ⬤ $Z⬤$E ⬤ ⬤ ⬤";;
    "3")
        echo -n "⬤ ⬤ ⬤ ⬤ $Z⬤$E ⬤ ⬤";;
    "4")
        echo -n "⬤ ⬤ ⬤ ⬤ ⬤ $Z⬤$E ⬤";;
    "5")
        echo -n "⬤ ⬤ ⬤ ⬤ ⬤ ⬤ $Z⬤$E";;
esac
