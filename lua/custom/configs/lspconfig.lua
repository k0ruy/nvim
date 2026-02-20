local base = require("plugins.configs.lspconfig")

local on_attach = base.on_attach
local capabilities = base.capabilities

vim.lsp.config("wgsl_analyzer", {
  on_attach = on_attach,
  capabilities = capabilities,
})

vim.lsp.config("pyright", {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "pyright-langserver", "--stdio" },
  filetypes = {"python"},
  settings = {
    python = {
      pythonPath = "/home/ko4/miniforge3/envs/proj/bin/python"
    }
  }
})

vim.lsp.enable("wgsl_analyzer")
vim.lsp.enable("pyright")
