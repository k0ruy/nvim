local telescope = require("telescope")

local options = {

    defaults = {
      vimgrep_arguments = {
        "rg",
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
        "--ignore-file=" .. vim.fn.expand("$HOME") .. "/.fdignore"
      },
      prompt_prefix = " ",
      --prompt_prefix = "🔍, ",
      selection_caret = " ",
      entry_prefix = "  ",
      initial_mode = "insert",
      selection_strategy = "reset",
      sorting_strategy = "ascending",
      layout_strategy = "horizontal",
      preview = {
        treesitter = true
      },
      layout_config = {
        prompt_position = "top",
        width = 0.87,
        height = 0.80,
        preview_cutoff = 120,
        horizontal = {mirror = false},
        vertical = {mirror = false}
      },
      file_sorter = require("telescope.sorters").get_fuzzy_file,
      generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
      path_display = {"truncate"}, -- path_display = {"absolute"},
      winblend = 0,
      border = {},
      borderchars = {"─", "│", "─", "│", "╭", "╮", "╯", "╰"},
      -- color_devicons = true,
      use_less = true,
      set_env = {["COLORTERM"] = "truecolor"}, -- default = nil,
      file_previewer = require("telescope.previewers").vim_buffer_cat.new,
      grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
      qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
      -- Developer configurations: Not meant for general override
      buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker
    },
    pickers = {
      find_files = {
        find_command = {
            "fd",
            "--type",
            "file",
            "--hidden",
            "--strip-cwd-prefix"
        }
      }
    },
    extensions = {
      fzf = {
        fuzzy = true, -- false will only do exact matching
        override_generic_sorter = true, -- override the generic sorter
        override_file_sorter = true, -- override the file sorter
        case_mode = "smart_case" -- or "ignore_case" or "respect_case"
        -- case_mode = "ignore_case" -- or "ignore_case" or "respect_case"
      }
    },
    
    telescope.load_extension("fzf"),
    telescope.load_extension("dap")
 }
 
 return options
