local plugins = {
  {
    "ThePrimeagen/vim-be-good",
    keys = "<leader>f1",
  },
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
        "html-lsp",
        "css-lsp",
        "emmet-ls",
        "typescript-language-server",
      },
    }
  },
  {
    "nvim-tree/nvim-tree.lua",
    enabled = false,
    opts = {
      -- Enable Netrw to make the 'gx' shortcut work
      disable_netrw = false,
      hijack_netrw = false,
    }
  },
  -- {
  --   "ThePrimeagen/harpoon"
  -- }
}

return plugins
