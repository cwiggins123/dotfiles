#
export TERM='rxvt-unicode'

if [ -n "$BASH_VERSION" ]; then
  if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
  fi
fi

if [ -e /home/christopher/.nix-profile/etc/profile.d/nix.sh ]; then . /home/christopher/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
