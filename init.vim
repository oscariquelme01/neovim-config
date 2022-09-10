" ---------------------
" -- BASIC SETTINGS --- 
" ---------------------


" ---------------------
" ------ IMPORTS ------ 
" ---------------------
runtime ./maps.vim

call plug#begin('~/.configure/nvim/plugged')
" Themes
Plug 'catppuccin/nvim', {'as': 'catppuccin'}

" Utilities
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'lilydjwg/colorizer' 

" interface
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'

call plug#end()

let g:catppuccin_flavour = "frappe" " latte, frappe, macchiato, mocha

lua << EOF
require("catppuccin").setup()
EOF

colorscheme catppuccin
