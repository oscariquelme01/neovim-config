" ---------------------
" -- BASIC SETTINGS --- 
" ---------------------


" ---------------------
" ------ IMPORTS ------ 
" ---------------------
runtime ./maps.vim

call plug#begin('~/.configure/nvim/plugged')
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
call plug#end()

let g:catppuccin_flavour = "frappe" " latte, frappe, macchiato, mocha

lua << EOF
require("catppuccin").setup()
EOF

colorscheme catppuccin
