#!/bin/sh

git submodule init
git submodule update

unameOut="$(uname -s)"
case $unameOut in
	Darwin )
		target_vim="/.vim"
		target_vimrc="/.vimrc"
		link_vim="/.vim"
		link_vimrc="/.vimrc"
		ln -s -f $PWD$target_vim $HOME$link_vim
		ln -s -f $PWD$target_vimrc $HOME$link_vimrc ;;

	Linux )	
		target_vim="/.vim"
		target_vimrc="/.vimrc"
		link_vim="/.vim"
		link_vimrc="/.vimrc"
		ln -s -f $PWD$target_vim $HOME$link_vim
		ln -s -f $PWD$target_vimrc $HOME$link_vimrc ;;

	MINGW* )
		target_vim="\dotfiles.vim\.vim"
		link_vim="\.vim"
		target_vimrc="\dotfiles.vim\.vimrc"
		link_vimrc="\.vimrc"
		cmd //c "mklink /D %USERPROFILE%${link_vim} %USERPROFILE%${target_vim}"
		cmd //c "mklink %USERPROFILE%${link_vimrc} %USERPROFILE%${target_vimrc}" ;;
esac