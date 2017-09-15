#!/bin/bash
set -e -x

XRANDR=/usr/bin/xrandr
$XRANDR --auto
$XRANDR --output DP-1 --left-of eDP-1
