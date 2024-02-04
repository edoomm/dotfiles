#
# ~/.bash_profile
#

if [[ $(tty) = /dev/tty1 ]] && [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]]; then
startx
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc
