set nocompatible
" Enable use of the mouse for all modes
set mouse=a

" Display line numbers on the left
set number

syntax on

set hidden
set wildmenu
set showcmd

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

set autoindent
set nostartofline
set ruler
set laststatus=2
set confirm
set visualbell
set t_vb=
set cmdheight=2

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>

" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab

" Indentation settings for using hard tabs for indent. Display tabs as
" four characters wide.
set shiftwidth=4
set tabstop=4

" set undofile
set shell=/bin/bash
set lazyredraw
set matchtime=3

" Changing leader key
let mapleader = ","

" Set title to window
set title

" To  show special characters in Vim
set listchars=tab:?\ ,eol:?

" Make vim able to edit crontab fields again
set backupskip=/tmp/*,/private/tmp*

" Settings for searching and moving
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" Make Vim to handle long lines nicely
set wrap
set textwidth=79
set formatoptions=qrn1

" Get rid of help keys
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Working with split screen nicely, resize split when window is resized
au VimResized * :wincmd = 

" Make sure vim returns to the same line when we reopen a file
augroup line_return
        au!
        au BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \ execute 'normal! g`"zvzz' |
            \ endif
augroup END
nnoremap g; g;zz

" =========== Gvim Settings =============
" Removing scrollbars
if has("gui_running")
    set guitablabel=%-0.12t%M
    set guioptions-=T
    set guioptions-=r
    set guioptions-=L
    set guioptions+=a
    set guioptions-=m
    colo molokai2
    set listchars=tab:?\ ,eol:?
else
    set t_Co=256
    colorschem molokai2
endif

" ==== Pathogen

execute pathogen#infect()
filetype plugin indent on

" Tagbar stuff
nmap <F8> :TagbarToggle<CR>
