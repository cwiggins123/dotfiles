#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.xmodmap

# merge in defaults and keymaps

[ -f $sysresources ] && xrdb -merge $sysresources
[ -f $sysmodmap ] && xmodmap $sysmodmap
[ -f $userresources ] && xrdb -merge $userresources
[ -f $usermodmap ] && xmodmap $usermodmap

#/usr/bin/pipewire &
#/usr/bin/pipewire-pulse &
#/usr/bin/wireplumber &
#xcompmgr -fcD 5 &
#picom -b --animations --animation-window-mass 0.5 --animation-for-open-window zoom --animation-stiffness 350 &#
#mpd &
#redshift -l 30.00:-90.00 -t 6500:3500 -m randr &
#dunst &
#xwallpaper --zoom ~/Pictures/d.jpg &
#dwmblocks &

exec ratpoison 
