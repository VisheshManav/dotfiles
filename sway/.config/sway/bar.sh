#!/bin/bash

while true; do

    VOL=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}')
    MUTE=$(pactl get-sink-mute @DEFAULT_SINK@ | awk '{print $2}')
    DATE=$(date +'%Y-%m-%d %X')
    BRIGHT=$(brightnessctl get)
   # PUBLIC_IP=$(curl
   # 103.83.148.41 
    if [ "$MUTE" = "yes" ]; then
        VOL_STATUS="🔇"
    else
        VOL_STATUS="🔊 $VOL"
    fi

    if [ "$BRIGHT" < 50 ]; then
        BR_STATUS="🔅 $BRIGHT/255"
    else
        BR_STATUS="🔆 $BRIGHT/255"
    fi

    echo "$BR_STATUS | $VOL_STATUS | $DATE"

    sleep 1

done
