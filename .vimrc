" .vimrc

" Setup

" Let’s use Pathogen
execute pathogen#infect()
" Space as a Leader
let mapleader = "\<Space>"
" Use Vim features, not Vi
set nocompatible
" Use UTF-8 by default
set encoding=utf-8
set fileencoding=utf-8

" Syntax highlighting

" Detect filetype
filetype plugin on
" Enable syntax highighting
syntax enable
" Show matching parens, brackets, etc.
set showmatch
" 256 colours please
set t_Co=256
" This gets rid of the grey background
let g:solarized_termtrans = 1
" Solarized colour scheme...
colorscheme solarized8_flat
" ...with a dark background
set background=dark
" Italicised comments and attributes
highlight Comment cterm=italic
highlight htmlArg cterm=italic
" Ensure that italics carry over if I ever switch light/dark scheme
autocmd ColorScheme * highlight! Comment cterm=italic
autocmd ColorScheme * highlight! htmlArg cterm=italic
" Tell Vim to look in my home directory for more ctags
set tags+=tags;$HOME

" Airline
let g:airline_detect_spell=0

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim

" NERDTree show hidden files
let NERDTreeShowHidden=1

" NERDTree hide ^G
let g:NERDTreeNodeDelimiter = "\u00a0"

" NERDTree hide separator
highlight VertSplit ctermbg=NONE

" Visual decorations

" Show status line
set laststatus=2
" Show what mode you’re currently in
set showmode
" Show what commands you’re typing
set showcmd
" Allow modelines
set modeline
" Show current line and column position in file
set ruler
" Customise our current location information
set statusline=%f\ %=Line\ %l/%L\ Col\ %c\ (%p%%)
" Show file title in terminal tab
set title
" Set relative line numbers...
set relativenumber
" ...but absolute numbers on the current line (hybrid numbering)
set number
" Force the cursor onto a new line after 80 characters
set textwidth=80
" Enable cursor line
set cursorline
highlight CursorLine cterm=None ctermbg=0 
" Colour the column just after our line limit so that we don’t type over it
" set colorcolumn=+1

" Search

" Don’t keep results highlighted after searching...
set nohlsearch
" ...just highlight as we type
set incsearch
" Ignore case when searching...
set ignorecase
" ...except if we input a capital letter
set smartcase

" Interactions

" Start scrolling slightly before the cursor reaches an edge
set scrolloff=3
set sidescrolloff=5
" Scroll sideways a character at a time, rather than a screen at a time
set sidescroll=1
" Allow motions and back-spacing over line-endings etc.
set backspace=indent,eol,start
set whichwrap=h,l,b,<,>,~,[,]
" Don’t redraw the screen unless we need to
set lazyredraw
" Write swapfiles to disk a little sooner
set updatetime=250

" Text management

filetype plugin indent on
" 2 spaces please
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
" Round indent to nearest multiple of 2
set shiftround
" No line-wrapping
set nowrap
" Spell-check always on
set spell
" Underscores denote words
set iskeyword-=_
" No extra spaces when joining lines
set nojoinspaces
" Interpret numbers with leading zeroes as decimal, not octal
set nrformats-=octal
" Auto-format comments
set formatoptions+=jroqn1

" Set relevant filetypes
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.hbs set filetype=html
autocmd BufRead,BufNewFile *.ejs set filetype=html
autocmd BufRead,BufNewFile *.vue set filetype=html

" Disable arrow keys (hardcore)
map  <Up>    <Nop>
imap <Up>    <Nop>
map  <Down>  <Nop>
imap <Down>  <Nop>
map  <Left>  <Nop>
imap <Left>  <Nop>
map  <Right> <Nop>
imap <Right> <Nop>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
