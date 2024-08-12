local plugins = {

  {
    "danymat/neogen",
    -- Uncomment next line if you want to follow only stable versions
    -- version = "*" 
    opts = function()
        return require("custom.configs.neogen")
    end,
    config = function(_, opts)
        require("neogen").setup(opts)
    end,
  },
  {
    "nvimtools/none-ls.nvim",
    ft = {"python"},
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "rust-analyzer",
        "wgsl-analyzer",
        "jedi-language-server",
        "python-lsp-server",
        "pyright",
        "black",
        "ruff-lsp",
      }
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end
  },

  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function ()
      return require "custom.configs.rust-tools-opts"
    end,
    config = function (_, opts)
      require('rust-tools').setup(opts)
    end
  },
  {
    "mfussenegger/nvim-dap",
  },
  {
    'saecki/crates.nvim',
    tag = 'stable',
    ft = {"rust", "toml"},
    config = function(_, opts)
        local crates = require('crates')
        crates.setup(opts)
        crates.show()
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function()
        local M = require "plugins.configs.cmp"
        table.insert(M.sources, {name = "crates"})
        return M
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = function()
        return require("custom.configs.telescope")
    end,
    config = function(_, opts)
        require("telescope").setup(opts)
    end,

  },
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },
  {
    "telescope.nvim",
    dependencies = {
        "nvim-telescope/telescope-dap.nvim",
        config = function()
            require("telescope").load_extension("dap")
        end,
    },
  },


}

return plugins
