#!/bin/bash

CAPACITY=$(cat "/sys/class/power_supply/BAT1/capacity")
STATUS=$(cat "/sys/class/power_supply/BAT1/status")

if [ $CAPACITY -eq 15 ] && [ "$STATUS" == "Discharging" ]; then
    notify-send -u critical -i $HOME/Downloads/warning-error-svgrepo-com.svg "CRITICALLY LOW BATTERY!" "Plug in the charger\nBattery = ${CAPACITY}%"
    exit
fi

if [ $CAPACITY -eq 30 ] && [ "$STATUS" == "Discharging" ]; then
    notify-send -u critical -i $HOME/Downloads/warning-error-svgrepo-com.svg "LOW BATTERY!" "Plug in the charger\nBattery = ${CAPACITY}%"
    exit
fi

if [ $CAPACITY -eq 90 ] && [ "$STATUS" == "Discharging" ]; then
    notify-send -u critical -i $HOME/Downloads/warning-1-svgrepo-com.svg "Discharging" "Plug in the charger\nBattery = ${CAPACITY}%"
    exit
fi

