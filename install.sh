#!/bin/sh

set -e

# Install ZSH
chsh -s /bin/zsh
ln -s `pwd`/zshrc ~/.zshrc
ln -s `pwd`/zsh ~/.zsh

# Install Vim
mkdir -p ~/bin/config
ln -s `pwd`/vimrc ~/.vimrc
ln -s `pwd`/zsh ~/.vim

# Set Mac OS defaults we like.
./setup/osx

echo 'Done'

