#!/bin/sh

# enviro vars
#ELECTRON_TRASH=trash-cli atom

xrdb -merge ~/.Xresources

# keyboard
#setxkbmap dvorak
xset r rate 180 40
# nvidia-settings --assign CurrentMetaMode="HDMI-0: 1920x1080_60 +1920+0 { ForceFullCompositionPipeline = On }, DP-1: 1920x1080_60 +0+0 { ForceFullCompositionPipeline = On }"

# natural scrolling
xinput --set-prop 10 "libinput Natural Scrolling Enabled" 1

xrandr --output HDMI-1 --mode 1920x1080 --rate 60 --primary
xrandr --output DP-1 --mode 1920x1080 --rate 60 --left-of HDMI-1
# xrandr --output HDMI-2 --mode 1920x1080 --rate 60 --right-of HDMI-1 --rotate left

# Set wallpaper
feh --bg-fill ~/Pictures/Wallpapers/unsplash.jpg

# load WM
# sxhkd -m -1 &

# bspwm
allow_rgb10_configs=false compton --config /home/cas/.config/compton.conf &
exec i3
