#!/bin/bash

date_formatted=$(date +'%d.%m.%Y %H:%M')
battery="$(cat /sys/class/power_supply/BAT0/status) $(cat /sys/class/power_supply/BAT0/capacity)%"

wifi() {
    wifi="WIFI OFF"

    if [[ $(nmcli -t -f WIFI g 2>/dev/null) = "enabled" ]]; then
        wifi="WIFI $(nmcli -t -f WIFI 2>/dev/null | head -n 1 | awk '{print $2}')"
    fi
}

bluetooth() {
    bluetooth="BT on"

    if [[ $(bluetoothctl show 2>/dev/null | awk '/Powered/ {print $2}') = "no" ]];
    then
        bluetooth="BT off"
    fi
}

volume() {
    if [[ $(pactl get-sink-mute @DEFAULT_SINK@) = "Mute: yes" ]];
    then
        volume="MUTED"
    else
        volume="VOL $(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print $2*100}')%"
    fi
}

while true
do
    volume
    wifi
    bluetooth
    echo "$bluetooth | $wifi | $battery | $volume | $date_formatted" 
    sleep 1
done
