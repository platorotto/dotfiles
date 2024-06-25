#!/usr/bin/bash

# Funcion para encontrar el monitor conectado
externo() {
if xrandr | grep "HDMI-1 connected"; then
	externo="HDMI-1"
elif xrandr | grep "DP-2 connected"; then
	externo="DP-2"
else
	externo="DP-1"
fi
}

externo
monitor=$externo

# Apagar monitores y prender interno
xrandr --output "$monitor" --off
xrandr --output eDP-1 --mode 1920x1080 --primary --auto
