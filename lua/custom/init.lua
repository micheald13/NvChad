vim.opt.colorcolumn = "80"
vim.opt.relativenumber = true 
-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("highlight_yank", {}),
  callback = function()
    vim.highlight.on_yank()
  end,
})
