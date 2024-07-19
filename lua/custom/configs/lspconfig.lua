local base = require("plugins.configs.lspconfig")

local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require("lspconfig")

lspconfig.wgsl_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"python"},
  settings = {
     python = {
       pythonPath = "/home/ko4/miniforge3/envs/fplier/bin/python",
     },
   },
})
