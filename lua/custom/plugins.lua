local plugins = {
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
        "clangd",
        "bash-language-server",
        "pyright",
      },
    },
  },
  {
    'kdheepak/lazygit.nvim',
    lazy = false,
  },
  {
    'dhruvasagar/vim-table-mode',
    lazy = false,
  },
  {
  "neovim/nvim-lspconfig",

   dependencies = {
     "jose-elias-alvarez/null-ls.nvim",
     config = function()
       require "custom.configs.null-ls"
     end,
   },
 
   config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
   end,
  },
  {
    'dhruvasagar/vim-table-mode',
    lazy = false,
  },
  {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
  }
}
return plugins
