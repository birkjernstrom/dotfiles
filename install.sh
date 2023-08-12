function bind {
	if [ -L $1 ]; then
		return
	fi

	if [ -f $1 ]; then
		mv $1 "${1}.bk"
	fi
	ln -s $2 $1
}

DOTFILES=".dotfiles"
cd $DOTFILES

# Brew install
echo ".dotfiles/install => Brew"
brew bundle install

# Dotfile configurations
echo ".dotfiles/install => config files"
bind "${HOME}/.gitignore" "${HOME}/${DOTFILES}/git/ignore"
bind "${HOME}/.gitconfig" "${HOME}/${DOTFILES}/git/config"
bind "${HOME}/.zshrc" "${HOME}/${DOTFILES}/zsh/zshrc"
bind "${HOME}/.config/tmux" "${HOME}/${DOTFILES}/tmux"
bind "${HOME}/.config/nvim" "${HOME}/${DOTFILES}/nvim"
bind "${HOME}/.config/yabai" "${HOME}/${DOTFILES}/yabai"
bind "${HOME}/.config/skhd" "${HOME}/${DOTFILES}/skhd"
bind "${HOME}/.config/alacritty" "${HOME}/${DOTFILES}/alacritty"

# Configure macOS
echo ".dotfiles/install => macOS configurations"
./macOS/config.sh
