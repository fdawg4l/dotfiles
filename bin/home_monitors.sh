#!/bin/bash
set -x

/usr/bin/xrandr --output DP-2-1 --primary --right-of eDP-1 --output DP-2-3 --off --output DP-2-2 --right-of DP-2-1 --rotate left
