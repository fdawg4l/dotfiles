#!/bin/bash

xrandr --dpi 96
xrandr --output DP1-2 --primary
xrandr --output eDP1 --off

gsettings set org.mate.font-rendering dpi 96
awesome-client 'awesome.restart()'
nmcli r wifi off

