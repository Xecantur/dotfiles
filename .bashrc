#
# ~/.bashrc
#
cat ~/.art/saucer.art
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias la='ls -a --color=auto'
PS1='[\u@\h \W]\$ '
complete -cf sudo
