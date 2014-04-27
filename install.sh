#!/bin/sh

set -e

# Install ZSH
ln -s `pwd`/zshrc ~/.zshrc
ln -s `pwd`/zsh ~/.zsh

# Install Vim
mkdir -p ~/bin/config
ln -s `pwd`/vimrc ~/.vimrc
ln -s `pwd`/zsh ~/.vim

echo 'Done'

