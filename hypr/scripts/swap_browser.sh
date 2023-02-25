#!/bin/bash
#Swap default browser

if xdg-settings get default-web-browser | grep -q 'firefox'; then
	xdg-settings set default-web-browser google-chrome.desktop
else
	xdg-settings set default-web-browser firefox.desktop
fi
