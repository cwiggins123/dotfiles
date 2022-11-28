" if has("eval") always checks for vim-tiny (vi)
if has("eval")
  let skip_defaults_vim = 1
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

if has("termguicolors")
  set termguicolors
endif

" again, check for vim-tiny
if has("syntax")
  syntax enable
  set t_Co=256
  set background=dark
  colorscheme moonfly
  "let g:moonflyCursorColor = v:true
  hi Normal guibg=NONE ctermbg=NONE 
  hi LineNr ctermbg=NONE guibg=NONE
  " hi Comment ctermfg=darkgrey guifg=darkgrey
  "hi CursorLine cterm=NONE ctermfg=NONE ctermbg=233 guifg=NONE guibg=#121212
  "autocmd InsertEnter * highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=234 guifg=NONE guibg=#1c1c1c
  "autocmd InsertLeave * highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=233 guifg=NONE guibg=#121212
endif

if v:version >= 800
  " don't mess with files that it shouldn't
	set nofixendofline

  " better ascii chars
	set listchars=space:*,trail:*,nbsp:*,extends:>,precedes:<,tab:\|>

  " no auto folding
	set foldmethod=manual
	set nofoldenable
endif

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

" may help with performance
set ttimeoutlen=0

filetype plugin on 

" format perl on save
if has("eval")
  fun! s:Perltidy()
    let l:pos = getcurpos()
    silent execute '%!perltidy -i=2'
    call setpos('.', l:pos)
  endfun
endif

set wildmenu
set omnifunc=syntaxcomplete#Complete

" fix bash detection
if has("eval")
  fun! s:DetectBash()
    if getline(1) == '#!/usr/bin/bash' || getline(1) == '#!/bin/bash'
      set ft=bash
      set shiftwidth=2
    endif
  endfun
  autocmd BufNewFile,BufRead * call s:DetectBash()
endif
