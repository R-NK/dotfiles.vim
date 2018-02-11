#!/bin/sh

git submodule init
git submodule update

unameOut="$(uname -s)"
case $unameOut in
	Linux )	
			user=~
			target_vim="/dotfiles.vim/.vim"
			link_vim="/.vim"
			target_vimrc="/dotfiles.vim/.vimrc"
			link_vimrc="/.vimrc"
			ln -s -f $user$target_vim $user$link_vim
			ln -s -f $user$target_vimrc $user$link_vimrc ;;
	MINGW* )
			target_vim="\dotfiles.vim\.vim"
			link_vim="\.vim"
			target_vimrc="\dotfiles.vim\.vimrc"
			link_vimrc="\.vimrc"
			cmd //c "mklink /D %USERPROFILE%${link_vim} %USERPROFILE%${target_vim}"
			cmd //c "mklink %USERPROFILE%${link_vimrc} %USERPROFILE%${target_vimrc}" ;;
esac