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
  filetypes = { "python" },
  settings = {
    python = {
      analysis = {
        useLibraryCodeForTypes = true,
        diagnosticSeverityOverrides = {
          reportGeneralTypeIssues = "none",
          reportOptionalMemberAccess = "none",
          reportOptionalSubscript = "none",
          reportPrivateImportUsage = "none",
          reportMissingModuleSource = false,
        },
        autoImportCompletions = false,
      },
      linting = { pylintEnabled = false }
    }
  },
})

lspconfig.pylsp.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "python" },

  settings = {
    configurationSources = { "flake8" },
    pylsp = {
      plugins = {
        -- jedi_completion = {fuzzy = true},
        -- jedi_completion = {eager=true},
        jedi_completion = {
          include_params = true,
        },
        jedi_signature_help = { enabled = true },
        pyflakes = { enabled = true },
        -- pylint = {args = {'--ignore=E501,E231', '-'}, enabled=true, debounce=200},
        -- pylsp_mypy={enabled=false},
        pycodestyle = {
          enabled = true,
          ignore = { 'E501', 'E231', 'W503' },
          maxLineLength = 120
        },
        yapf = { enabled = true }
      }
    }
  }
}
)
