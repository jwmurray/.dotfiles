### fish

abbr -aU -- fishrel 'source ~/.config/fish/config.fish'
abbr -aU -- orel 'omf reload'


### git

abbr -a -U -- gc 'git checkout'
abbr -a -U -- gs 'git status'
abbr -a -U -- gg "git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
abbr -aU gg2 "git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
abbr -aU -- gf "git fetch"
abbr -aU -- gclone "git clone git@github.com:"
abbr -aU -- gcam "git commit -am '"
abbr -aU -- gcat "cat .git/config"
abbr -aU -- grb "git rebase"
abbr -aU -- grbi "git rebase -i"

## changing directories

## cd commands
abbr -aU -- . 'cd ..'
abbr -aU --  .. 'cd ../..'
abbr -aU --  ... 'cd ../../..'
abbr -aU --  ..... 'cd ../../../..'
abbr -aU --  ...... 'cd ../../../../..'
abbr -aU --  ........ 'cd ../../../../../..'
abbr -aU --  ......... 'cd ../../../../../../..'
abbr -aU -- cdcfg 'cd ~/.config'
abbr -aU -- cdd 'cd ~/.dotfiles'
abbr -aU -- cdf 'cd ~/.config/fish'




#### editing aliases and abbrs
abbr -aU -- salias 'omf reload'
abbr -aU -- valias 'vi ~/.config/fish/conf.d/aliases.fish'
abbr -aU -- vabbr 'vi ~/.config/fish/conf.d/abbr.fish'


####  terminals ####
abbr -aU -- al '/usr/local/bin/alacritty'
