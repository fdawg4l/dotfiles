#!/bin/bash

DPI=96
#OUTPUT=DP-1-2
OUTPUT=DP1

xrandr --output ${OUTPUT} \
	--auto \
	--primary \
	--pos 0x0 \
	--dpi ${DPI} \
	--output eDP-1 --off

gsettings set org.mate.font-rendering dpi ${DPI}
awesome-client 'awesome.restart()'
nmcli r wifi off
