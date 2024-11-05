#!/bin/bash

option0="internet"
option1="bluetooth"
option2="display"
option3="wallpaper"
option4="audio"

options="$option0\n$option1\n$option2\n$option3\n$option4"

chosen="$(echo -e "$options" | rofi -lines 5 -dmenu -p "settings")"
case $chosen in
	$option0)
		gnome-terminal -e nmtui;;
	$option1)
		blueman-manager;;
	$option2)
		lxrandr;;
	$option3)
		nitrogen;;
	$option4)
		pavucontrol
esac
