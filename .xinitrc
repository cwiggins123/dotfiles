#!/bin/bash
xmodmap ~/.xmodmap &
xterm -geometry 320x1+0+0 -fa "Terminus:size=14" -bg "black" -fg "grey" -fs 11 -name termbar -class termbar -T termbar -e \
  ~/.config/slackwareconfig/termbar &
xwallpaper --zoom ~/Pictures/d.jpg &
xrdb ~/.Xresources &
#dwmblocks &
xcompmgr &
exec cwm
