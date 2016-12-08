#!/bin/bash
set -e
set -x
xrandr --output DP3 --mode 2560x1600
xrandr --output HDMI1 --right-of DP3
xrandr --output HDMI1 --rotate left
