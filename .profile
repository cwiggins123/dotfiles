export PF_INFO="ascii title os host kernel uptime pkgs memory wm palette"
if [ -n "$BASH_VERSION" ]; then
  if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
  fi
fi
