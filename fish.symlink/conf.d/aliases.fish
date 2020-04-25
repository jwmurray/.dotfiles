#!/usr/bin/env fish

## git
alias gadd="git status --porcelain | awk '/\\?\\?/{ print $2 }' | xargs git add"
## exa commands
alias exa=ls
alias ll='exa -la'
alias lr='exa -la --sort oldest'
alias d='exa -la'

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


## nvim
alias vi vim
alias vi3 'vim ~/.config/i3/config'
alias valias 'vim ~/.config/fish/conf.d/aliases.fish'
alias vabbr 'vim ~/.config/fish/conf.d/abbr.fish'
