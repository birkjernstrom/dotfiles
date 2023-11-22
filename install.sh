function bind {
	if [ -L $1 ]; then
    if [ "$(readlink -- "${1}")" = $2 ]; then
      echo "Already symlinked ${1} to ${2}"
      return
    fi
    echo "ERROR: Symlink exists for ${1} for different path. Handle manually."
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
echo "==> Brew install"
brew bundle install

# Dotfile configurations
echo "==> Setup dotfiles"
echo ".dotfiles/install => config files"
bind "${HOME}/.gitignore" "${HOME}/${DOTFILES}/git/ignore"
bind "${HOME}/.gitconfig" "${HOME}/${DOTFILES}/git/config"
bind "${HOME}/.zshrc" "${HOME}/${DOTFILES}/zsh/zshrc"
bind "${HOME}/.config/tmux" "${HOME}/${DOTFILES}/tmux"
bind "${HOME}/.config/tmuxp" "${HOME}/${DOTFILES}/tmuxp"
bind "${HOME}/.config/nvim" "${HOME}/${DOTFILES}/nvim"
bind "${HOME}/.config/alacritty" "${HOME}/${DOTFILES}/alacritty"
bind "${HOME}/.config/wezterm" "${HOME}/${DOTFILES}/wezterm"
bind "${HOME}/.config/skhd" "${HOME}/${DOTFILES}/skhd"
bind "${HOME}/.config/yabai" "${HOME}/${DOTFILES}/yabai"
bind "${HOME}/.config/starship.toml" "${HOME}/${DOTFILES}/starship.toml"

# Other dependencies
echo "==> Setup dotfile dependencies"
if [[ ! -d "${HOME}/.config/tmux/plugins/tpm" ]]; then
  echo "Cloning Tmux TPM"
  git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
fi

# Configure macOS
echo "==> MacOS Configuration"
./macOS/config.sh

