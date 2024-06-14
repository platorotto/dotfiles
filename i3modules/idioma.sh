#!/usr/bin/bash

# Colores
blanco="#FFFFFF"

idioma=$(setxkbmap -query | awk '/layout/{print $2}')

if [[ "$idioma" == "es" ]]; then
	setxkbmap us
	echo "<span color='$blanco'>us</span>"
elif [[ "$idioma" == "us" ]]; then
	setxkbmap es
	echo "<span color='$blanco'>es</span>"

fi
