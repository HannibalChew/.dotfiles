#!/bin/sh

xrdb -merge ~/.Xresources

setxkbmap dvorak
xset r rate 180 40

xrandr --output HDMI-0 --auto --primary --output DVI-D-0 --auto --left-of HDMI-0

# enable natural scrolling.
xinput set-button-map 9 1 2 3 5 4 6 7 8 9 10 11 12 13 14 15 16

# Set wallpaper
hsetroot -fill ~/Pictures/Wallpapers/blackwaves.jpeg

# load WM
sxhkd -m -1 &
dropbox-cli start &
exec bspwm
