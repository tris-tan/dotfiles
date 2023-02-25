#!/bin/bash
 
lock=" Lock"
logout=" Logout"
shutdown="襤 Shutdown"
rebootb=" Reboot (firmware)"
reboot=" Reboot"
sleep=" Suspend"
 
selected_option=$(echo "$lock
$logout
$reboot
$rebootb
$shutdown" | gamemoderun rofi -dmenu -i -p "Power" \
		  -theme "~/.config/rofi/powermenu.rasi")

if [ "$selected_option" == "$lock" ]
then
  swaylock -c swaylock
elif [ "$selected_option" == "$logout" ]
then
  loginctl terminate-user `whoami`
elif [ "$selected_option" == "$shutdown" ]
then
  systemctl poweroff
elif [ "$selected_option" == "$reboot" ]
then
  systemctl reboot
elif [ "$selected_option" == "$rebootb" ]
then
  systemctl reboot
elif [ "$selected_option" == "$sleep" ]
then
  loginctl suspend
else
  echo "No match"
fi