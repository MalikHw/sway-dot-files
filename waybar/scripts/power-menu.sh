#!/bin/bash

# Power menu script for Waybar using wofi

options="suspend\npoweroff\nrestart"

chosen=$(echo -e "$options" | wofi --dmenu --prompt="Power Menu" --width=200 --height=150)

case $chosen in
    suspend)
        systemctl suspend
        ;;
    poweroff)
        systemctl poweroff
        ;;
    restart)
        systemctl reboot
        ;;
esac
