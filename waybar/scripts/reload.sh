#!/bin/bash

CONFIG_FILES="$HOME/.config/waybar/config $HOME/.config/waybar/style.css"

trap "killall waybar" EXIT
exec waybar
