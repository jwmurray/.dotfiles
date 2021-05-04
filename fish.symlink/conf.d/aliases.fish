#!/usr/bin/env fish

## git
alias gadd="git status --porcelain | awk '/\\?\\?/{ print $2 }' | xargs git add"
## exa commands
# alias exa=ls
alias ll 'ls -la'
alias lr='ls -lart'
alias d 'ls -la'

alias p=pwd
alias du='du -hs'
alias sbash='source  ~/.bashrc'
alias h=history
alias rmf='rm -rf'
alias gd='git diff'


## Rust
alias cb='cargo build'
alias snap='cd ~/snap/exercism/2/exercism/rust/atbash-cipher/'

## find aliases
alias ff='find . -type f -name  '

## cats
alias gcat='cat .git/config'

##
# alias pyenv=virtualenv

## nvim
alias vi vim
alias vi3 'vim ~/.config/i3/config'
alias valias 'vim ~/.config/fish/conf.d/aliases.fish; frel'

###  ifconfig
alias mif 'ifconfig en0'

## python

## fish
alias frel 'source ~/.aliases; source ~/.config/fish/config.fish'

## ssh
alias s8 'ssh 172.16.2.8'
alias s10 'ssh 172.16.2.10'
alias sp 'ssh 172.16.0.1'

##
alias ifc "ifconfig | egrep 'mtu|^\s*status|^\s*inet\s'"
