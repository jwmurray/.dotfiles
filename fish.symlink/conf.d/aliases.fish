#!/usr/bin/env fish

## git
alias gadd="git status --porcelain | awk '/\\?\\?/{ print $2 }' | xargs git add"
## exa commands
alias ll='exa -la'
alias lr='exa -lart'
alias d='exa -la'

alias p=pwd
alias du='du -hs'
alias sbash='source  ~/.bashrc'
alias h=history
alias rmf='rm -rf'

## Rust
alias cb='cargo build'

## find aliases
alias ff='find . -type f -name  '

## cats
alias gcat='cat .git/config'

