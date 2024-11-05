#!/bin/bash

# options to be displayed
option0="lock"
option1="logout"
option2="reboot"
option3="shutdown"

# options passed into variable
options="$option0\n$option1\n$option2\n$option3"

chosen="$(echo -e "$options" | rofi -lines 3 -dmenu -p "power")"
case $chosen in
	$option0)
		i3lock;;
	$option1)
		i3-msg exit;;
	$option2)
		systemctl reboot;;
	$option3)
		systemctl poweroff;;
esac
