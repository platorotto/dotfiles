#!/usr/bin/bash

idioma=$(setxkbmap -query | awk '/layout/{print $2}')

if [[ "$idioma" == "es" ]]; then
	setxkbmap us
elif [[ "$idioma" == "us" ]]; then
	setxkbmap es
fi
