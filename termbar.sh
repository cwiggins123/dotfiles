#!/bin/bash

while true; do
        #CPU_SPEED=$(sysctl hw.cpuspeed | cut -d "=" -f 2 | cut -d "." -f 1)
        #CPU_TEMP=$(sysctl hw.sensors.cpu0.temp0 | cut -d "=" -f 2 | cut -d "." -f 1)
        #RAM=$(top | grep Memory | awk {'print $3'})
        #BAT_STATUS=$(sysctl hw.sensors.acpiac0.indicator0 | cut -d "=" -f 2 | cut -d "." -f 1)
        #BAT=$(apm -l)
        DATE=$(date)
        VOL=$(pactl get-sink-volume 0 | awk '{print $5}') 
        MUT=$(pactl get-sink-mute 0 | awk '{print $2}')
        [[ $MUT == "yes" ]] && VOL="MUTE"
        #NWID=$(ifconfig | grep ieee | awk {'print $3'})
        #IP=$(dig +short myip.opendns.com @resolver1.opendns.com)
        echo -en "  $USER | $DATE | Vol: $VOL \r" 
        sleep 1
done
