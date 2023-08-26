export PF_INFO="ascii title os host kernel uptime pkgs memory wm palette"
export MC_SKIN=modarin256-defbg
export PATH=$PATH:/sbin/:/usr/sbin/:~/go/bin/:~/.local/bin/
export editor=vim
export SUDO_ASKPASS="$HOME/.local/bin/dmenupass"

# nnn stuff
export NNN_PLUG='u:davecloud;o:fzopen;c:fcd;j:jump;p:preview-tui;t:preview-tabbed;i:imgview;v:vidthumb;d:dragd'
export NNN_FIFO="/tmp/nnn.fifo"
export NNN_TERMINAL="foot"


if [ -n "$BASH_VERSION" ]; then
  if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
  fi
fi
