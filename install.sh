#!/bin/sh

git submodule init
git submodule update

unameOut="$(uname -s)"
case $unameOut in
	Linux )	
			target_vim="~/dotfiles.vim\.vim"
			link_vim="~/.vim"
			target_vimrc="~/dotfiles.vim/.vimrc"
			link_vimrc="~/.vimrc"
			ln -s -f $target_vim $link_vim
			ln -s -f $target_vimrc $link_vimrc ;;
	MINGW* )
			target_vim="\dotfiles.vim\.vim"
			link_vim="\.vim"
			target_vimrc="\dotfiles.vim\.vimrc"
			link_vimrc="\.vimrc"
			cmd //c "mklink /D %USERPROFILE%${link_vim} %USERPROFILE%${target_vim}"
			cmd //c "mklink %USERPROFILE%${link_vimrc} %USERPROFILE%${target_vimrc}" ;;
esac