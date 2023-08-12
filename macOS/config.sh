########################################
# MacOS Reconfigurations
########################################

# Keyboard sanity
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1         # normal minimum is 2 (30 ms)

# VSCode & Vim
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

# No Desktop icons
defaults write com.apple.finder CreateDesktop -bool false
killall Finder

# Autohide Dock
defaults write com.apple.dock "autohide" -bool true
# Spaces, no re-arrange
defaults write com.apple.dock "mru-spaces" -bool false
killall Dock
