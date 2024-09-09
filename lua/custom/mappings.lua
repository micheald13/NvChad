local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>dp"] = { "<cmd> DapToggleBreakpoint <CR>", "toggle breakpoint" },
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

M.abc = {
  n = {
    ["<leader>gg"] = {"<cmd>:LazyGit<CR>", "lazygit"},
    ["<leader>/"] = { "<cmd> Telescope current_buffer_fuzzy_find <CR>", "find in current buffer" },
    ["<leader>fw"] = { "<cmd> Telescope grep_string <CR>", "search current word" },
    ["<leader>fg"] = { "<cmd> Telescope live_grep <CR>", "live grep" },
  },
}

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

return M
