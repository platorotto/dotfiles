#!/usr/bin/bash

# Colores
blanco="#FFFFFF"
rojo="#FF0800"

# Ajustar volumen
if [[ "${BLOCK_BUTTON}" == 4 ]]; then
	pactl set-sink-volume 0 +5%
elif [[ "${BLOCK_BUTTON}" == 5 ]]; then
	pactl set-sink-volume 0 -5%
elif [[ "${BLOCK_BUTTON}" == 2 ]]; then
	pactl set-sink-mute 0 toggle
fi

# Informacion
vol=$(pactl list sinks | tr ' ' '\n' | grep -m1 '%')
mute=$(pactl get-sink-mute 0)

# Estado del mute
if [[ $mute == "Mute: no" ]]; then
	echo "<span color='$blanco'>󰕾</span> <span color='$blanco'>$vol</span>"
elif [[ $mute == "Mute: yes" ]]; then
	echo "<span color='$rojo'>󰖁</span>"
fi
