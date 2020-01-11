#!/bin/bash

REPO="https://github.com/ekspek/dotfiles"

echo "Cloning repository..."
git clone $REPO

cd dotfiles > /dev/null 2>&1

echo "Cloning submodules..."
git submodule update --init --recursive

ln -sf .vim ~/.vim
ln -sf .vimrc ~/.vimrc
ln -sf .zshrc ~/.zshrc
ln -sf .gitconfig ~/.gitconfig
