" --- PLUGINS ---

call plug#begin('~/.configure/nvim/plugged')
" LSP PLUGINGS
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'ray-x/lsp_signature.nvim'

" SNIPPETS
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'rafamadriz/friendly-snippets'

" Vim-cmp
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

"Sintax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" File explorer
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-tree.lua' 

" Utilities
Plug 'AndrewRadev/tagalong.vim'
Plug 'tpope/vim-commentary'
Plug 'lilydjwg/colorizer' 
Plug 'Raimondi/delimitMate'
Plug 'inkarkat/vim-UnconditionalPaste'
Plug 'tpope/vim-surround'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" interface
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'

" Themes
Plug 'kyazdani42/blue-moon'
Plug 'Th3Whit3Wolf/one-nvim'
Plug 'EdenEast/nightfox.nvim'
Plug 'dracula/vim', {'as': 'dracula'} 
Plug 'sts10/vim-pink-moon'
Plug 'ghifarit53/tokyonight-vim'
Plug 'rmehri01/onenord.nvim'
Plug 'rockerBOO/boo-colorscheme-nvim'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}

" Solidity specifics
Plug 'tomlion/vim-solidity'
Plug 'tzachar/cmp-tabnine', {'do': './install.sh'}

call plug#end()
