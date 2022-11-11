" if has("eval") always checks for vim-tiny (vi)
if has("eval")
  let skip_defaults_vim = 1
endif

set nocompatible
set autoindent 
set autowrite
set number
set relativenumber
set ruler
set showmode
set tabstop=2
set t_vb=
set softtabstop=2
set shiftwidth=2
set smartindent
set smarttab
set t_Co=256
set term=st-256color

if has("termguicolors")
  set termguicolors
endif

if has("syntax")
  syntax enable
  set background=dark
  let g:everforest_background = 'soft'
  let g:everforest_better_performance = 1
  colorscheme everforest
endif

if v:version >= 800
	set nofixendofline
	set listchars=space:*,trail:*,nbsp:*,extends:>,precedes:<,tab:\|>
	set foldmethod=manual
	set nofoldenable
endif

set textwidth=72

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
