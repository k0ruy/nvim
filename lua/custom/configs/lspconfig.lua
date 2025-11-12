local base = require("plugins.configs.lspconfig")
local util = require('lspconfig.util')

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
  cmd = { "pyright-langserver", "--stdio" },
  filetypes = {"python"},
  settings = {
    python = {
      pythonPath = "/home/ko4/miniforge3/envs/proj/bin/python"
    }
  }
})

lspconfig.zls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {"zls"},
  filetypes = { "zig", "zon" },
  root_dir = util.root_pattern("zls.json", "build.zig", ".git")
})
