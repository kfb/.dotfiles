#!/bin/sh

# Install .oh-my-zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh) --unattended"

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install brew packages
brew install direnv
brew install git
brew install git-gui
brew install heroku
brew install hub
brew install pre-commit
brew install pyenv
brew install ripgrep
brew install stow

# Install rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Set up Sublime Text 3 (note: does not actually install it, just the
# packages and settings)
ln -s "$(pwd)/sublime/Installed Packages" "${HOME}/Library/Application Support/Sublime Text 3/Installed Packages"
ln -s "$(pwd)/sublime/Packages" "${HOME}/Library/Application Support/Sublime Text 3/Packages"

# Symlink the dotfiles
stow direnv
stow git
stow vim
stow zsh

# Finalise Git setup
git config --global core.excludesFile $HOME/.config/git/gitignore
echo "Don't forget to set your Git user and email!"
