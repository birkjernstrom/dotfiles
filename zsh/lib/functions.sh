function brewdump() {
	cd ~/.dotfiles
	if [ -f Brewfile ]; then
		rm Brewfile
	fi
	brew bundle dump
	cd -
}
