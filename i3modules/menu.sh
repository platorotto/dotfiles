#!/usr/bin/bash

# Opciones del menu
opciones="display\npower"
menu=$(echo -e "$opciones" | dmenu -i -p "menu:")

# condicionales del menu
if [[ "$menu" == "display" ]]; then
	display=$(echo -e "mirror\nexterno\nlaptop" | dmenu -i -p "menu:")
	case "$display" in
		mirror) bash ~/Scripts/i3modules/duplicar.sh ;;
		externo) bash ~/Scripts/i3modules/externo.sh ;;
		laptop) bash ~/Scripts/i3modules/laptop.sh ;;
	esac
elif [[ "$menu" == "power" ]]; then
	power=$(echo -e "shutdown\nreboot\nsuspend" | dmenu -i -p "menu:")
	case "$power" in
		shutdown) systemctl poweroff ;;
		reboot) systemctl reboot ;;
		suspend) systemctl hybrid-sleep ;;
	esac
fi
