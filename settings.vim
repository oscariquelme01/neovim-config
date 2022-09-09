" Load lsp_signature
" :lua require('_lsp_signature')
" Load vim completions config
:set completeopt=menu,menuone,noselect
:lua require('_vim-cmp')
" Load tree-sitter config 
:lua require('tree-sitter')
" Load telescope config
:lua require('_telescope')
" Load lualine config
:lua require('_lualine')
" Load nvim-tree
:lua require('_nvim_tree')
" Load lsp settings 
:lua require('lsp')
" Load tabnine
:lua require('_tabnine')

" required for not having always the django filetype in flask projects
au BufNewFile,BufRead *.html set filetype=html
