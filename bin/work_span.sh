xrandr --output eDP-1 --off --output DP-1-2 --pos 0x0 --auto --primary --output DP-1-1 --rotate left --pos 0x3840 --right-of DP-1-2 --dpi 96 --auto
gsettings set org.mate.font-rendering dpi 96
awesome-client 'awesome.restart()'
