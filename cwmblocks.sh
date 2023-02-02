#!/bin/bash

while true; do
        DATE=$(sb-clock)
        VOL=$(sb-volume) 
        FCST=$(sb-forecast)
        MUS=$(sb-music)
        DID=$(xprop -root 32c '\t$0' _NET_CURRENT_DESKTOP | cut -f 2)
        echo -en " | $DID | $USER | $DATE | $FCST | Vol: $VOL | $MUS \r" 
        sleep 1
done
