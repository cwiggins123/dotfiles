#!/bin/bash

red='\033[0;31m'
rst='\033[0m'

while true; do
        DATE=$(sb-clock)
        VOL=$(sb-volume) 
        FCST=$(sb-forecast)
        MUS=$(sb-music)
        DSK=$(sb-disk)
        DID=$(xprop -root 32c '\t$0' _NET_CURRENT_DESKTOP | cut -f 2)
        printf "  ${red}$USER${rst}  %s  %-241s %s  %s  %s  %s  %s\\r" \
                 "$DID"  "$MUS"  "$VOL"  "$FCST"  "$DSK"  "$DATE"
        sleep 1s
done
