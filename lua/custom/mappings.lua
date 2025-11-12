local M = {}

M.dap = {
    n = {
        ["<leader>db"] = {
        "<cmd> DapToggleBreakpoint <CR>",
        "Toggle breakpoint"
        },
        ["<leader>dus"] = {
            function ()
                local widgets = require('dap.ui.widgets');
                local sidebar = widgets.sidebar(widgets.scopes);
                sidebar.open();
            end,
            "Open debugging sidebar"
        }
    }
}

M.generate_docstring = {
    n = {
        ["<leader>dc"] = {
          function ()
              require('neogen').generate()
          end,
          "Generate docstring for python functions"
        }
    }
}

M.run = {
    n = {
        ["<leader>rr"] = {
            function ()
                require('rust-tools').runnables.runnables();
            end,
            "Run rust file"
        }
    }
}

M.crates = {
    n = {
        ["<leader>rcu"] = {
            function ()
                require('crates').upgrade_all_crates()
            end,
            "upgrade crates"
        }
    }
}

-- Add Zig commands here
M.zig = {
    n = {
        ["<leader>zr"] = {
            function()
                vim.cmd("terminal zig run " .. vim.fn.expand("%"))
            end,
            "Run current Zig file"
        },
        ["<leader>zb"] = {
            function()
                vim.cmd("terminal zig build")
            end,
            "Build Zig project"
        },
        ["<leader>zt"] = {
            function()
                vim.cmd("terminal zig test " .. vim.fn.expand("%"))
            end,
            "Test current Zig file"
        },
        ["<leader>zc"] = {
            function()
                vim.cmd("terminal zig build-exe " .. vim.fn.expand("%"))
            end,
            "Compile current Zig file"
        }
    }
}

return M
