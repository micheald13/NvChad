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
     "nvimtools/none-ls.nvim",
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
    lazy = false,
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require "custom.configs.oil"
    end,
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
  },
  {
    'simrat39/rust-tools.nvim',
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function ()
      return require "custom.configs.rust-tools"
    end,
    config = function(_, opts)
      require('rust-tools').setup(opts)
    end
  },
  {
    "mfussenegger/nvim-dap",
    init = function()
      require("core.utils").load_mappings("dap")
    end
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
    opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    },
    {
        "mbbill/undotree",
        lazy = false,

        config = function()
            vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
        end
    },
  }
}
return plugins
