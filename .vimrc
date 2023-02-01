" checks for vim-tiny (vi)
if has("eval")
   let skip_defaults_vim = 1
endif

if filereadable(expand("~/.vim/autoload/plug.vim"))
  call plug#begin('~/.vim/plugins')
  Plug 'tpope/vim-fugitive'
  Plug 'sheerun/vim-polyglot'
  Plug 'romainl/Apprentice'
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
  colorscheme apprentice
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
filetype plugin indent on 
set wildmenu
set omnifunc=syntaxcomplete#Complete

autocmd BufRead,BufNewFile *.erl,*.es,*.hrl,*.yaws,*.xrl setlocal expandtab noautoindent
au BufNewFile,BufRead *.erl,*.es,*.hrl,*.yaws,*.xrl setf erlang

fun! JumpToDef()
  if exists("*GotoDefinition_" . &filetype)
    call GotoDefinition_{&filetype}()
  else
    exe "norm! \<C-]>"
  endif
endf

nn <M-g> :call JumpToDef()<cr>
ino <M-g> <esc>:call JumpToDef()<cr>i
