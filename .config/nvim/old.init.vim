set nocompatible
set showmatch
set ignorecase
set mouse=a
set hlsearch
set incsearch
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set autoindent
set number
set wildmode=longest,list

syntax on
filetype plugin on
set ttyfast
set noswapfile

lua require('init')
