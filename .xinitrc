#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# Merge in defaults and keymaps
[ -f $sysresources ] && /usr/bin/xrdb -merge $sysresources
[ -f $sysmodmap ] && /usr/bin/xmodmap $sysmodmap
[ -f $userresources ] && /usr/bin/xrdb -merge $userresources
[ -f $usermodmap ] && /usr/bin/xmodmap $usermodmap

# autostart applications
mpd &
urxvtd &
redshift -l 30.00:-90.00 -t 6500:3500 -m randr &
picom -b &
hsetroot -solid "#a3ccbd" &

if [ -z "$DESKTOP_SESSION" -a -x /usr/bin/ck-launch-session ]; then
  ck-launch-session dbus-launch --exit-with-session cwm
else
  exec cwm
fi
