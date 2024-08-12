local base = require("plugins.configs.lspconfig")

local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require("lspconfig")

lspconfig.wgsl_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.jedi_language_server.setup({
  on_attach = on_attach,
  capabilities = capabilities,
--  cmd = { "pyright-langserver", "--stdio" },
--  filetypes = {"python"},
--  settings = {
--    python = {
--      pythonPath = "/home/ko4/miniforge3/envs/proj/bin/python"
--    }
--  }
})
