#!/bin/sh

# enviro vars
# ELECTRON_TRASH=trash-cli atom

xrdb -merge ~/.Xresources

# keyboard
setxkbmap dvorak
xset r rate 180 40

# natural scrolling
xinput --set-prop 10 "libinput Natural Scrolling Enabled" 1

xrandr --output HDMI-1 --mode 1920x1080 --rate 60 --primary
xrandr --output DP-2 --mode 1920x1080 --rate 60 --left-of HDMI-0
xrandr --output HDMI-2 --mode 1920x1080 --rate 60 --right-of HDMI-1 --rotate left

# Set wallpaper
feh --bg-fill ~/Pictures/Wallpapers/ocean.jpg

# load WM
# sxhkd -m -1 &
compton --config ~/.config/compton.conf &
# bspwm
exec i3
