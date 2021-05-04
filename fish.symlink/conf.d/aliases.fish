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
alias valias 'vim ~/.config/fish/conf.d/aliases.fish'
alias valias 'vim ~/.config/fish/conf.d/aliases.fish'

###  ifconfig
alias mif 'ifconfig en0'

## python

## fish
alias frel 'source ~/.config/fish/config.fish'
