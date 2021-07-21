function frel
   rm ~/.config/fish/fish_variables
   source ~/.config/fish/config.fish
   source ~/.config/fish/conf.d/abbr.fish
   source ~/.config/fish/conf.d/*.fish
   
end

function efish
	 emacs ~/.dotfiles/fish.symlink/conf.d
	 frel
end	 
	 
function du1
	 du -h -d 1
end
