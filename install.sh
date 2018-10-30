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
		echo "install.batを管理者権限で実行してください" ;;
esac