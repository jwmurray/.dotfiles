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


## nvim
alias vi nvim
alias vim nvim
alias vi3 'nvim ~/.config/i3/config'
alias valias 'nvim ~/.config/fish/conf.d/aliases.fish'
alias vabbr 'nvim ~/.config/fish/conf.d/abbr.fish'
