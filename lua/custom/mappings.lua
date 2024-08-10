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


return M
