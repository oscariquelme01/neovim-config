-- Require lsp installer
require("configs.lsp.nvim-lsp-installer")

-- Function to configure the mappings that will be called when a buffer attaches to a lsp server
local function on_attach(_, bufnr)
    -- Enable completion triggered by <C-X><C-O>
    -- See `:help omnifunc` and `:help ins-completion` for more information.
    vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

    -- Use LSP as the handler for formatexpr.
    --    See `:help formatexpr` for more information.
    vim.api.nvim_buf_set_option(0, 'formatexpr', 'v:lua.vim.lsp.formatexpr()')

    -- Configure key mappings
    require("configs.lsp.mappings").setup(bufnr)
end

-- Default lsp opts for all servers
local global_opts = {
    on_attach = on_attach,
    flags = {
        debounce_text_changes = 150,
    },
}

-- All the configured servers
local servers = {
     sumneko_lua = {require("configs.lsp.servers.sumneko_lua")},
}

local lspconfig = require("lspconfig")

for server_name, _ in pairs(servers) do
    -- Combine global opts with the specific server options defined above
    local opts = vim.tbl_deep_extend("force", global_opts, servers[server_name] or {})
    lspconfig[server_name].setup(opts)
end

