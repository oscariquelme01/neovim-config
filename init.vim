" ---------------------
" ------ IMPORTS ------ 
" ---------------------
runtime ./maps.vim
runtime ./settings.vim

call plug#begin('~/.configure/nvim/plugged')
" Themes
Plug 'catppuccin/nvim', {'as': 'catppuccin'}

" Utilities
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'lilydjwg/colorizer' 
Plug 'windwp/nvim-autopairs'

" interface
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'

" File explorer
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'kyazdani42/nvim-tree.lua'

" Syntax highlighting 
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()

let g:catppuccin_flavour = "frappe" " latte, frappe, macchiato, mocha

lua << EOF
require("catppuccin").setup()
require("configs.nvim-tree")
require("nvim-autopairs").setup()
require("configs.lualine")
require("configs.tree-sitter")
EOF

colorscheme catppuccin
