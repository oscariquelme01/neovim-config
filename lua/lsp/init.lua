local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "lsp._lsp_installer"
require "lsp._lsp_signature"
require("lsp.handlers").setup()
