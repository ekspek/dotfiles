#!/bin/sh

# If 'permission denied' is returned use 'chmod +x install.sh'

# Link to repo where the dotfiles are at
REPO="https://github.com/ekspek/dotfiles"
export DOTFILES=$(pwd)/dotfiles

# Cloning repository to "dotfiles" folder
echo "Cloning repository..."
git clone $REPO

cd $DOTFILES > /dev/null 2>&1

echo "Cloning submodules..."
git submodule update --init --recursive

# Install dein.vim
mkdir dein
cd dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
chmod +x ./installer.sh
./installer.sh ~/.cache/dein
cd ..
rm -r dein
