" ---------------------
" -- BASIC SETTINGS --- 
" ---------------------

set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
" set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.
set splitbelow splitright

" minor setting for markdown preview with glow
let g:glow_border = "rounded"


" ---------------------
" ------ IMPORTS ------ 
" ---------------------
runtime ./plug.vim
runtime ./maps.vim
runtime ./settings.vim

" set colorscheme after plugins installed

set termguicolors
:colorscheme catppuccin

" additional config for ultisnips 
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-w>"
" let g:UltiSnipsJumpBackwardTrigger="<c-q>"
