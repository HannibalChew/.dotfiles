#!/bin/sh

xrdb -merge ~/.Xresources

# keyboard
setxkbmap dvorak
xset r rate 180 40

# natural scrolling
xinput set-prop 9 291 1

xrandr --output HDMI-0 --auto --primary --output DVI-D-0 --auto --left-of HDMI-0

# Set wallpaper
feh --bg-fill ~/Pictures/Wallpapers/blackwaves.jpeg

# load WM
sxhkd -m -1 &
dropbox-cli start &
exec bspwm
