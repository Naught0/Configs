#!/bin/bash

workspace(){
	SPACE_NUM=$(bspc query -D -d);
		case "$SPACE_NUM" in
			"1")
				WORKSPACE="■ □ □ □ □";;
			"2")
				WORKSPACE="□ ■ □ □ □";;
			"3")
				WORKSPACE="□ □ ■ □ □";;
			"4")
				WORKSPACE="□ □ □ ■ □";;
			"5")
				WORKSPACE="□ □ □ □ ■";;
		esac
	echo $WORKSPACE
}

chg(){
	echo  $(acpi --battery | awk '{gsub(/,/, "");} {print $4}')
}

#rem(){
#	echo  $(acpi --battery | awk '/Discharging/ {print $6}')
#}

bat(){ 
	echo  $(acpi -a | if grep -q "on-line"; then echo ""; else echo "⭫ $(chg)"; fi)
}

ram(){
	echo  $(free -m | awk '/-/ {print $3}')
}

dat(){
	echo  $(date "+%H:%M  %D")
}

vol(){
	echo  $(amixer | if grep -q "off"; then echo "mute"; else echo $(amixer | awk '/Front Left: Playback/ {print $5}' | sed 's/\[//g;s/\]//g');fi)
}

mus(){
	echo  $(test -z "$(mpc current)" || mpc current)
}

pause(){
	echo  $(mpc | if grep -q "paused"; then echo "(paused)"; fi)
}

cpu(){
	echo  $(mpstat 2 1 | awk '$3 ~ /CPU/ { for(i=1;i<=NF;i++) { if ($i ~ /%idle/) field=i } } $3 ~ /all/ {printf"%d",100 - $field}')
}


int(){
	echo $(iwconfig wlp7s0 | awk '/Quality/ {print $2}' | sed 's/Quality//g;s/=//g;s/\///g;s/70//g')%
}

while :; do
	echo  "^pa(0)^ca(1, bspc desktop -f next)$(workspace)^ca() ^pa(1100)$(bat) ram $(ram) int $(int)^ca() vol $(vol) $(dat)"
sleep 0
done
