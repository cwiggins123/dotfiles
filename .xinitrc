#!/bin/bash
xmodmap ~/.xmodmap &
xterm -geometry 320x1+0+0 -fa "Terminus:size=14" -bg "black" -fg "grey" -fs 11 -name termbar -class termbar -T termbar -e \
  ~/.config/dotfiles/termbar &
xwallpaper --zoom ~/Pictures/k.jpg &
xrdb ~/.Xresources &
#dwmblocks &
xcompmgr &
exec cwm
