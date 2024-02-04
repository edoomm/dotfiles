#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PS1='\[\e[32m\][\W]\[\e[31m\]$(parse_git_branch)\[\e[00m\]$ '

# Keyboard layout
setxkbmap latam

# Mapping CAPS to CTRL
setxkbmap -option ctrl:nocaps
xcape -e 'Control_L=Escape'
