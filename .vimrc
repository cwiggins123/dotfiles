" checks for vim-tiny (vi)
if has("eval")

if filereadable(expand("~/.vim/autoload/plug.vim"))
  call plug#begin('~/.vim/plugins')
  Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
  Plug 'tpope/vim-fugitive'
  Plug 'jimenezrick/vimerl'
  Plug 'edkolev/erlang-motions.vim'
  call plug#end()
else
  autocmd vimleavepre *.go !gofmt -w % 
endif

" some basic tweaks
set nocompatible
set autoindent 
set autowrite
set number
set relativenumber
set ruler
set showmode
set tabstop=2
set t_vb=""
set softtabstop=2
set shiftwidth=2
set smartindent
set smarttab

"colors
if has("termguicolors")
  set termguicolors
endif

if has("syntax")
  syntax on
  set background=dark
  colorscheme habamax
  hi Normal guibg=NONE ctermbg=NONE
  hi LineNr guibg=NONE ctermbg=NONE
endif

" misc stuff, makes vim less annoying
if v:version >=  800
  set nofixendofline
  set listchars=space:*,trail:*,nbsp:*,extends:>,precedes:<,tab:\|>
  set foldmethod=manual
  set nofoldenable
endif

" more misc stuff
set textwidth=80
"set colorcolumn=81
set expandtab
set nobackup
set noswapfile
set nowritebackup
set noundofile
set icon
set hlsearch
set incsearch
set linebreak
set wrapscan
set ttyfast
set ttimeoutlen=0
filetype plugin on 
set wildmenu
set omnifunc=syntaxcomplete#Complete

autocmd BufRead,BufNewFile *.erl,*.es,*.hrl,*.yaws,*.xrl set expandtab
au BufNewFile,BufRead *.erl,*.es,*.hrl,*.yaws,*.xrl setf erlang
