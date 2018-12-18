#!/bin/bash

DPI=196

xrandr --dpi ${DPI}
xrandr --output eDP1 --primary

gsettings set org.mate.font-rendering dpi ${DPI}
awesome-client 'awesome.restart()'
nmcli r wifi on

