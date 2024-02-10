---@type MappingsTable
local M = {}

M.general = {
  v = {
    [">"] = { ">gv", "indent"},
  },
}

-- more keybinds!
M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dus"] = {
      function()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    }
  }
}

M.dap_go = {
  plugin = true,
  n = {
    ["<leader>dgt"] = {
      function()
        require('dap-go').debug_test()
      end,
      "Debug go test"
    },
    ["<leader>dgl"] = {
      function()
        require('dap-go').debug_last()
      end,
      "Debug last go test"
    }
  }
}

M.tmux_nav = {
  plugin = true,
  n = {
    [ "<c-h>"] = {
      "<cmd> TmuxNavigateLeft <cr>",
      "tmux left",
    },
    [ "<c-j>"] = {
      "<cmd> TmuxNavigateDown <cr>",
      "tmux down",
    },
    [ "<c-k>"] = {
      "<cmd> TmuxNavigateUp <cr>",
      "tmux up",
    },
    [ "<c-l>"] = {
      "<cmd> TmuxNavigateRight <cr>",
      "tmux right",
    },
    [ "<c-\\>"] = {
      "<cmd> TmuxNavigatePrevious <cr>",
      "tmux prev",
    },
  },
}

return M
