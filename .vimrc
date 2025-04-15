" Vim settings and Keybinds
filetype on
syntax on
set number
set tabstop=2
set expandtab
set nobackup
set incsearch
set ignorecase
set smartcase
set wildmenu
set wildmode=list:longest
set wildignore=*.sql,*.jpg,*.xlsx
set encoding=UTF-8

noremap <Tab> gt
noremap <S-Tab> gT

let mapleader=" "

" Auto load plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir.'/autoload/plug.vim'))
  silent execute '!curl -sfLo '.data_dir.'/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"Plugins
call plug#begin()

Plug 'preservim/nerdtree'
Plug 'preservim/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'sainnhe/everforest'

call plug#end()

"Plugin Settings
let NERDtreeShowHidden= 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 0

nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap ff :Files<CR>

"Theme
set background=dark
let g:everforest_background = 'soft'
let g:everforest_better_performance = 1

colorscheme everforest

"VIMSCRIPT --- {{{
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END
"}}}
