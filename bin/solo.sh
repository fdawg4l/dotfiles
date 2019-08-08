#!/bin/bash

DPI=196

xrandr --dpi ${DPI}
xrandr --output eDP1 --primary

echo "Xft.dpi: ${DPI}" | xrdb -merge

gsettings set org.mate.font-rendering dpi ${DPI}
awesome-client 'awesome.restart()'
nmcli r wifi on

