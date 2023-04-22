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
}
return plugins
