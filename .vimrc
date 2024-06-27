" Vim settings and Keybinds
filetype on
syntax on
set number
set tabstop=2
set nobackup
set incsearch
set hlsearch
set ignorecase
set smartcase
set wildmenu
set wildmode=list:longest
set wildignore=*.sql,*.jpg,*.xlsx
set encoding=UTF-8
set mouse=a
set foldmethod=indent
set foldlevel=99
set splitbelow

noremap <Tab> gt
noremap <S-Tab> gT

let mapleader=" "


" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path
" according to your mount point
if executable(s:clip)
  augroup WSLYank
    autocmd!
    autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
  augroup END
endif

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

Plug 'tpope/vim-fugitive'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-rails'

Plug 'sainnhe/everforest'

call plug#end()

"Plugin Settings
let NERDtreeShowHidden= 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 0

nnoremap <leader>e :NERDTreeFind<CR>
noremap <C-N> :NERDTreeToggle<CR>
nnoremap ff :Files<CR>
nnoremap fw :Rg<CR>

"Theme
set background=dark
let g:everforest_background = 'soft'
let g:everforest_better_performance = 1

colorscheme everforest

