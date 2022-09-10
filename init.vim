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

" Completion
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'

" Snips
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'rafamadriz/friendly-snippets'

call plug#end()

let g:catppuccin_flavour = "frappe" " latte, frappe, macchiato, mocha

lua << EOF
require("catppuccin").setup()
require("configs.nvim-tree")
require("nvim-autopairs").setup()
require("configs.lualine")
require("configs.tree-sitter")
require("configs.vim-cmp")
EOF

colorscheme catppuccin
