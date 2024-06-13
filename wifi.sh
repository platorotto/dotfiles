#!/usr/bin/bash

# Colores
rojo="#FF0800"
blanco="#FFFFFF"

# Informacion
estado=$(nmcli networking connectivity check)
nombre=$(nmcli -t -f name,device connection show --active | grep wlan0 | cut -d\: -f1)

# Estado del internet
if [[ "$estado" == "full" ]]; then
	echo "<span color='$blanco'>󰖩</span> <span color='$blanco'>$nombre</span>"
elif [[ "$estado" == "none" ]]; then
	echo "<span color='$rojo'>󰖩</span>"
fi
