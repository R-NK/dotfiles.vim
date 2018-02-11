#!/bin/sh

git submodule init
git submodule update

ln -s -f ~/dotfiles.vim/.vim ~/.vim
ln -s -f ~/dotfiles.vim/.vimrc ~/.vimrc