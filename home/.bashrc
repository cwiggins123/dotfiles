#!/usr/bin/bash

# check for interactive tty
case $- in
  *i*) ;; # interactive
  *) return ;;
esac

# better compatibility and portability
export MC_SKIN=modarcon16-defbg-thin
export PATH=$PATH:/sbin/:/usr/sbin:~/go/bin/:~/.local/bin/
export EDITOR=nano

case "$TERM" in
*-256color)
        alias ssh='TERM=${TERM%-256color} ssh'
        ;;
*)
        CUR_TERM=${TERM}-256color
        CUR_TERMINFO=${TERM:0:1}/$CUR_TERM

        BOX_TERMINFO_DIR=/usr/share/terminfo
        [[ -f $BOX_TERMINFO_DIR/$CUR_TERMINFO ]] && \
                export TERM=$CUR_TERM

        HOME_TERMINFO_DIR=$HOME/.terminfo
        [[ -f $HOME_TERMINFO_DIR/$CUR_TERMINFO ]] && \
                export TERM=$CUR_TERM
        ;;
esac

# aliases
alias dot="cd ~/.config/dotfiles"
alias l="ls"
alias la="ls -al"
