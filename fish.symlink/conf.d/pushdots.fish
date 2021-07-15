function pushdots
	cd ~/.dotfiles
	git add .
	git commit -am "update dotfiles"
	git push origin
end
