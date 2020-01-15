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

