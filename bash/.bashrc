#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

dfb_path="${HOME}/.dotfiles/bash"

[[ -f $dfb_path/aliases ]] && source $dfb_path/aliases

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PS1='\[\e[32m\][\W]\[\e[31m\]$(parse_git_branch)\[\e[00m\]$ '
