#!/usr/bin/env fish

## git
alias gadd="git status --porcelain | awk '/\\?\\?/{ print $2 }' | xargs git add"
## ls commands
alias ll='ls -la'
alias lr='ls -lart'
alias d='ls -la'

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

