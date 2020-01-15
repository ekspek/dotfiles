#!/bin/bash

# If 'permission denied' is returned use 'chmod +x install.sh'

# Link to repo where the dotfiles are at
REPO="https://github.com/ekspek/dotfiles"

# Cloning repository to "dotfiles" folder
echo "Cloning repository..."
git clone $REPO

cd dotfiles > /dev/null 2>&1

echo "Cloning submodules..."
git submodule update --init --recursive

# Install custom oh-my-zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

