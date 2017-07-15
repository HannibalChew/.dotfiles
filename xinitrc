#!/bin/sh

xrdb -merge ~/.Xresources

# keyboard
setxkbmap dvorak
xset r rate 180 40

# natural scrolling
xinput set-prop 9 291 1

xrandr --output HDMI-0 --mode 1920x1080 --rate 60 --primary
xrandr --output DVI-I-1 --mode 1920x1080 --rate 60 --left-of HDMI-0

# Set wallpaper
feh --bg-fill ~/Pictures/Wallpapers/blackwaves.jpeg

# load WM
sxhkd -m -1 &
dropbox-cli start &
exec bspwm
