set encoding=utf-8
set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8
if has('termguicolors')
	set termguicolors
endif
set t_Co=256
set noswapfile
set autoread
set number "行番号を表示
set title
syntax on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smartindent
set cursorline "現在の行を強調表示
set wildmode=list:longest "コマンドラインの補完
set showmatch "かっこ入力時に対応するかっこを強調表示
set showcmd
set laststatus=2

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'jacoborus/tender.vim'
Plugin 'itchyny/lightline.vim'

call vundle#end()            " required
filetype plugin indent on    " required

colorscheme tender
let g:lightline = { 'colorscheme': 'tender' }
