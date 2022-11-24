#!/usr/bin/bash

# check for interactive tty
case $- in
  *i*) ;; # interactive
  *) return ;;
esac

# better compatibility and portability
export MC_SKIN=dark
export PATH=$PATH:/home/christopher/.local/bin/

# aliases
alias dot="cd ~/.config/dotfiles"
alias l="ls"
alias la="ls -al"
alias erat="vim ~/.ratpoisonrc"

# vi keys 
set -o vi

# smart prompt that I totally didn't steal from Rob Muhlstein
PROMPT_LONG=20
PROMPT_MAX=95
PROMPT_AT=@

_ps1() {
  local P='$' dir="${PWD##*/}" B countme short long double\
    r='\[\e[31m\]' g='\[\e[30m\]' h='\[\e[34m\]' \
    u='\[\e[33m\]' p='\[\e[34m\]' w='\[\e[35m\]' \
    b='\[\e[36m\]' x='\[\e[0m\]'

  [[ $EUID == 0 ]] && P='#' && u=$r && p=$u # root
  [[ $PWD = / ]] && dir=/
  [[ $PWD = "$HOME" ]] && dir='~'

  B=$(git branch --show-current 2>/dev/null)
  [[ $dir = "$B" ]] && B=.
  countme="$USER$PROMPT_AT$(hostname):$dir($B)\$ "

  [[ $B == master || $B == main ]] && b="$r"
  [[ -n "$B" ]] && B="$g($b$B$g)"

  short="$u\u$gPROMPT_AT$h\h$g:$w$dir$B$p$P$x "
  long="$g$u\u$g$PROMPT_AT$h\h$g:$w$dir$B\n$g$p$P$x "
  double="$g$u\u$g$PROMPT_AT$h\h$g$W$dir$B\n$G$B\n$g$p$P$x "

  if (( ${#countme} > PROMPT_MAX )); then
    PS1="$double"
  elif (( ${#countme} > PROMPT_LONG)); then
    PS1="$long"
  else
    ps1="$short"
  fi
}

PROMPT_COMMAND="_ps1"
#neofetch # for the memes
