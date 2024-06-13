#!/usr/bin/bash

# Colores
verde="#00FF00"
amarillo="#FFFF00"
rojo="#FF0800"
blanco="#FFFFFF"

# Informacion
bat=$(cat /sys/class/power_supply/BAT0/capacity)
state=$(cat /sys/class/power_supply/BAT0/status)

# Color de la carga
if [[ "10" -ge "$bat" ]]; then
	time_color=$rojo
elif [[ "20" -ge "$bat" ]]; then
	time_color=$amarillo
else
	time_color=$blanco
fi

# Estado de la bateria
if [[ $state == "Discharging" ]]; then
	echo "<span color='$blanco'>󰁹</span> <span color='$time_color'>$bat%</span>"
elif [[ $state == "Charging" ]]; then
	echo "<span color='$amarillo'>󱐋</span> <span color='$blanco'>$bat%</span>"
else
	echo "<span color='$verde'>󰁹</span> <span color='$verde'>$bat%</span>"
fi
