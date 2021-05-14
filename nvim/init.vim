set tabstop=4 softtabstop=4
set termguicolors
set shiftwidth=4
set expandtab
set noswapfile
set smartindent
set relativenumber
set nu 
set nohlsearch
set hidden 
set noerrorbells
set nowrap 
set noswapfile 
set nobackup
set undodir=~/.vim/undodir
set undofile 
set incsearch 
set scrolloff=8
set colorcolumn=80
set signcolumn=yes 
set bg=dark
set nocompatible


call plug#begin('~/.vim/plugged')
Plug 'romainl/Apprentice'
Plug 'Aszarsha/elysian.vim'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

colorscheme apprentice 
let g:airline_theme = "elysian"
let g:airline_detect_spell=1
 
