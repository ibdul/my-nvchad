return {
  {
    "stevearc/conform.nvim",
    tags = {
      "lsp",
      "linting",
      "format",
    },
    description = [[
      Lightweight yet powerful formatter plugin for Neovim
    ]],
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    tags = {
      "lsp",
    },
    description = [[
      nvim-lspconfig. nvim-lspconfig is a collection of LSP server configurations for the Nvim LSP client. View all configs, or run :help lspconfig-all from Nvim.
    ]],
    config = function()
      require "configs.lspconfig"
    end,
  },
}
