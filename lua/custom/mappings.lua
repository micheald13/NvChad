local M = {}

M.abc = {
  n = {
    ["<leader>gg"] = {"<cmd>:LazyGit<CR>", "lazygit"},
    ["<leader>/"] = { "<cmd> Telescope current_buffer_fuzzy_find <CR>", "find in current buffer" },
    ["<leader>fw"] = { "<cmd> Telescope grep_string <CR>", "search current word" },
    ["<leader>fg"] = { "<cmd> Telescope live_grep <CR>", "live grep" },
  },
}

return M
