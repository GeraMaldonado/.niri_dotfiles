#!/bin/bash

# Power menu script using fuzzel

OPTIONS="⏻   Apagar\n⏾   Reiniciar\n󰒲   Suspender\n󰍃   Cerrar Sesión\n󰷛   Bloquear"

CHOICE=$(echo -e "$OPTIONS" | fuzzel --dmenu --prompt="Power Menu: " --width=20)

case "$CHOICE" in
    *"Apagar")
        systemctl poweroff
        ;;
    *"Reiniciar")
        systemctl reboot
        ;;
    *"Suspender")
        systemctl suspend
        ;;
    *"Cerrar Sesión")
        niri msg action quit
        ;;
    *"Bloquear")
        swaylock
        ;;
esac
