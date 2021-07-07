### fish

abbr -aU -- frel 'source ~/.config/fish/config.fish'
abbr -aU -- orel 'omf reload'


### git

abbr -a -U -- gc 'git checkout'
abbr -a -U -- gs 'git status'
abbr -a -U -- gg "git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
abbr -aU gg2 "git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
abbr -aU -- gf "git fetch"
abbr -aU -- gclone "git clone git@github.com:"
abbr -aU -- gcam "git commit -am 'Next commit'"
abbr -aU -- getaliases "pushd ~/.dotfiles; git fetch; git rebase; popd"
abbr -aU -- pushaliases "pushd ~/.dotfiles; git commit -am 'Next commit'; git push origin master -f; popd"
abbr -aU -- gcat "cat .git/config"
abbr -aU -- grb "git rebase"
abbr -aU -- grbi "git rebase -i"
abbr -aU -- ifc "ifconfig | egrep 'mtu|^\s*status|^\s*inet\s'"

abbr -aU -- sd6 "export DISPLAY='172.16.0.6:0.0'"
abbr -aU -- sd5 "export DISPLAY='172.16.0.5:0.0'"

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
abbr -aU -- cdf 'cd ~/.dotfiles/fish/conf.d'
abbr -aU -- cdv 'cd ~/code/vaso/vasolabs'
abbr -aU -- cdvc 'cd ~/code/vaso/vasolabs/controller'
abbr -aU -- cdf 'cd ~/.config/fish'




#### editing aliases and abbrs
abbr -aU -- salias 'source ~/.aliases; source ~/.config/fish/config.fish'


####  terminals ####
abbr -aU -- al '/usr/local/bin/alacritty'

### cargo/rust builds ###
abbr -aU -- cb 'clear;cargo build'
abbr -aU -- cr 'clear;cargo run'
abbr -aU -- ct 'clear;cargo test'

####  vi/vim/neovim ####

abbr -aU --  ll 'ls -lah'
abbr -aU --  lr 'ls -larth'
abbr -aU --  d 'ls -lah'
abbr -aU --  p pwd
abbr -aU --  du 'du -hs'
abbr -aU --  sbash 'source  ~/.bashrc'
abbr -aU --  h history
abbr -aU --  rmf 'rm -rf'
abbr -aU --  gd 'git diff'
abbr -aU --  gcam "git commit -am 'Next commit.'"
abbr -aU --  gpushmaster 'git push origin master -f;'
abbr -aU --  pa pushaliases
abbr -aU --  getaliases 'pushd  ~/.dotfiles;git fetch; git rebase; popd;'
abbr -aU -- frel 'source ~/.config/fish/config.fish; source ~/.config/fish/conf.d/abbr.fish'

##### vaso

abbr -aU -- pso 'ps aux | grep -i orthanc'
abbr -aU -- psc 'ps aux | grep -i controller'
abbr -aU -- psa 'ps aux | grep -i orthanc; ps aux | grep -i controller'
abbr -aU -- vorth 'vim /opt/Orthanc/orthanc.json'

abbr -aU -- tailc ' /var/log/orthanc/Orthanc.log'
abbr -aU -- tailo 'tail -f  /var/log/orthanc/Orthanc.log'

