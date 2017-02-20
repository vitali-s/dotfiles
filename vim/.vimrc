" Set no compatible module with Vi
set nocompatible

" General settings
set number                      " Show line numbers
set backspace=indent,eol,start  " Allow to use backspace in insert mode
set visualbell                  " No sounds or error
set autoread                    " Reload files changed outside
set hidden
syntax on                       " Highlight syntax

" Turn off swap files
set noswapfile
set nobackup
set nowb

" Search
set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

" Other settings
set cursorline
set expandtab
set laststatus=2
set mouse=a
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

" Install plugings via Vim Vundle
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

" Change color scheme
syntax enable
set background=light
set t_Co=256
let g:solarized_termcolors=256
colorscheme solarized