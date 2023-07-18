export PF_INFO="ascii title os host kernel uptime pkgs memory wm palette"
export MC_SKIN=modarin256-defbg
export PATH=$PATH:/sbin/:/usr/sbin/:~/go/bin/:~/.local/bin/
export editor=vim
export SUDO_ASKPASS="$HOME/.local/bin/dmenupass"



if [ -n "$BASH_VERSION" ]; then
  if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
  fi
fi
