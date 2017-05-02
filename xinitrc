#!/bin/sh

xrdb -merge "$HOME/.Xresources"

xset r rate 180 40

setxkbmap dvorak

feh --bg-fill ~/Pictures/Wallpapers/japan.png

sxhkd &
exec bspwm
