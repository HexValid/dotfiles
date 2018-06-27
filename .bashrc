#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
export PS1="\[\033[38;5;246m\]\[\033[48;5;239m\] \u \[$(tput sgr0)\]\[\033[38;5;235m\]\[\033[48;5;246m\] \W \[$(tput sgr0)\] "

