# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob nomatch notify
bindkey -e
cat ~/.art/cloud.art
[[ $- != *i* ]] && return
autoload -U colors && colors
alias ls='ls --color=auto'
alias la='ls -a --color=auto'
alias sprunge='curl -F sprunge=<- http://sprunge.us'
PROMPT="┌─$fg[cyan][%n]$reset_color─$fg[yellow][%~]$reset_color─$fg[red][%l]$reset_color─$fg[magenta][%?]$reset_color─$fg[white][%T]$reset_color
└──╼$fg[white] "
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/azriel/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
