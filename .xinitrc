#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

[ -f $sysresources ] && xrdb -merge $sysresources
[ -f $sysmodmap ] && xmodmap $sysmodmap
[ -f $userresources ] && xrdb -merge $userresources
[ -f $usermodmap ] && xmodmap $usermodmap

#xterm -geometry 320x1+0+0 -fa Hack -fs 12 -bg "#1c1b19" -fg "#fce8c3" -name termbar -class termbar -T termbar -e ~/.config/dotfiles/cwmblocks.sh &

#xcompmgr -f -c -r 10 -o 95 -l -10 -t 10 -D 5 &
#mpd &
#redshift -l 30.00:-90.00 -t 6500:3500 -m randr &
#xwallpaper --zoom ~/Pictures/gb2.png &

if [ -z "$DESKTOP_SESSION" -a -x /usr/bin/ck-launch-session ]; then
  exec ck-launch-session dbus-launch --exit-with-session ratpoison
else
  exec ratpoison 
fi
