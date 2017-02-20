set cursorline
set number
set hlsearch
set incsearch

set expandtab
set laststatus=2
set mouse=a
set nocompatible
set omnifunc=syntaxcomplete#Complete

set ruler
set rulerformat=%=%h%m%r%w\ %(%c%V%),%l/%L\ %P
set scrolloff=5
set shiftwidth=8
set showmatch
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set tabstop=4
set smarttab
set softtabstop=0

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Bundle 'FuzzyFinder'
Bundle 'bling/vim-airline'
Bundle 'altercation/vim-colors-solarized'
Bundle 'pangloss/vim-javascript'
Bundle 'L9'
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'easymotion/vim-easymotion'
Bundle 'rizzatti/dash.vim'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}

call vundle#end() 
filetype plugin indent on

syntax on

syntax enable
set background=light
set t_Co=256
let g:solarized_termcolors=256
colorscheme solarized