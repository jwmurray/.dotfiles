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
alias gcam="git commit -am 'Next commit.'"
alias gpushmaster='git push origin master -f;'
alias pushaliases='pushd  ~/.dotfiles; gcam; gpushmaster; popd; frel'
alias pa=pushaliases
alias getaliases='pushd  ~/.dotfiles;git fetch; git rebase; popd;'

alias sd6='export DISPLAY="172.16.0.6:0.0"
alias sd5='export DISPLAY="172.16.0.5:0.0"

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
alias sfishaliases='source ~/.config/fish/conf.d/aliases.fish'
alias sconfigfish='source ~/.config/fish/config.fish'
alias sbashalias='source ~/.aliases'


###  ifconfig
alias mif 'ifconfig en0'

## python

## fish
alias frel 'sbashaliases sfishaliases sconfigfish'

## ssh
alias s8 'ssh 172.16.2.8'
alias s10 'ssh 172.16.2.10'
alias sp 'ssh 172.16.0.1'

##
##  alias ifc "ifconfig | egrep 'mtu|^\s*status|^\s*inet\s'"
