set rtp+=~/.vim/bundle/vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-markdown'
Plugin 'sjl/gundo.vim'
Plugin 'mrtazz/simplenote.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'godlygeek/tabular'
" Plugin 'airblade/vim-gitgutter'
Plugin 'kien/ctrlp.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'myusuf3/numbers.vim'
Plugin 'rking/ag.vim'
Plugin 'wting/rust.vim'

call vundle#end()

syntax on
filetype plugin indent on

nnoremap ; :
inoremap jj <ESC>

set encoding=utf-8
set autoindent smartindent " Auto indent, and do it smartly
set smarttab               " Tabs/backspaces are smart
set nocompatible           " This is vim, not vi
set mouse=a                " Enable mouse for all modes
set expandtab              " Use spaces instead of tabs
set autoread               " Watch files for changes
set scrolloff=5            " Keep at least 5 lines when scrolling
set ruler                  " Show line number in status bar
set incsearch              " Incremental searching
set ignorecase             " Ignore search case
set smartcase              " Don't ignore case if uppercase in search
set hlsearch               " Highlight ALL search results
set number                 " Show line numbers
set cursorline             " Highlight the current line
set gdefault               " Global substitude by default
set showcmd                " Show partial command in status line
set showmode               " Show the current mode in the status line
set ttyfast                " Better redrawing
set undofile               " Save undos between files
set colorcolumn=80         " Highlight the 80 character limit
set relativenumber         " Relative line numbering
set hidden                 " Hide buffers when they are abandoned
set wildmenu               " Menu has tab completion
set wildmode=list:longest  " Complete till longest common string

set undodir=~/.vim/tmp/undo/     " Undo files
set backupdir=~/.vim/tmp/backup/ " Backups
set directory=~/.vim/tmp/swap/   " Swap files
set backup                       " Enable backups

" colorscheme xoria256

set softtabstop=4
set shiftwidth=2

nnoremap <Leader>t :CtrlP<CR>
nnoremap <Leader>n :NERDTree<CR>
nnoremap <Leader>u :GundoToggle<CR>

" Highlight trailing whitespace in red
highlight ExtraWhitespace ctermbg=red ctermfg=white guibg=#592929
match ExtraWhitespace /\s\+\%#\@<!$/

set textwidth=80 " Auto-wrap lines over 80 char limit

au FileType cpp setlocal noexpandtab shiftwidth=8
au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4
au FileType clojure RainbowParenthesesActivate

let NERDTreeIgnore=['\.o$', '\~$']
set wildignore+=*.o

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" source ~/.simplenoterc

