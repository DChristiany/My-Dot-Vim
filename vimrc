" ==========================================
" Pathogen
" ==========================================
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
" disable vi error messages 
set nocompatible

" Save those nasty swp files where they belong
 set dir=~/.temp

" Tab width 2 change tabs into spaces and smart indent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smartindent
set autoindent
set expandtab

" Show matching parenthesis
set showmatch

" Show line number and let the line number column have width 5
set number

" Remember upto 128 actions to undo
set history=128

" reload file if it gets changed outside vim
set autoread

" Tab completion
set wildmenu
set wildmode=list:full

" Makes + the standard register for linux clipboard
let g:clipbrdDefaultReg = '+'

" Show the command i am currently using
set showcmd

" Highlight what i am searching for
set hlsearch
set incsearch
set ignorecase
set smartcase

" Enable syntax highlighting
syntax enable

" Highlight current line
set cursorline

" set Font and shell
set gfn=Monospace\ 10
set shell=/bin/bash

" UTF-8 kodierung
set encoding=utf8
try
  lang en_US
catch
endtry

"Default file types
set ffs=unix,mac,dos

" Make selections easier
set virtualedit=all


"keep the cursor in the middle
set scrolloff=8

" Set filetype stuff to on
filetype on
filetype plugin on
filetype indent on
set ofu=syntaxcomplete#Complete

"allow to change buffers without saving
set hidden

"hide the mouse
set mousehide

"colorscheme
colorscheme vividchalk

"Making window switching easier
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Making Window resizing easier
 if bufwinnr(1)
  map + <C-W>+
  map - <C-W>-
endif

" Making auto completion easier
imap <C-n><C-p> <Tab>

" GVIM Settings
if has("gui_running")
  set guioptions-=T
endif

" Syntax Highlighting for hpp files
au BufNewFile,BufRead *.c,*.cc,*.h,*.cpp,*.hpp,*.cxx setlocal cindent
au BufNewFile,BufRead *.c,*.cc,*.h,*.cpp,*.hpp,*.cxx setlocal comments=
au BufNewFile,BufRead *.c,*.cc,*.h,*.cpp,*.hpp,*.cxx setlocal et


" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

"===============================
"NERDtree
"===============================
nmap <F7> :NERDTreeToggle<CR>

"===============================
"Taglist
"===============================
nmap <F6> :TlistToggle<CR>

"===============================
"MiniBufExplorer
"===============================
map MBEbn<CR> <C-Tab>
