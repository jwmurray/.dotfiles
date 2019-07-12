function pushdots
	cd ~/.dotfiles
	git add .
	git add-untracked
	git commit -am "update dotfiles"
	git push origin
end
