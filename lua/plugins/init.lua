return {
  {
    "neovim/nvim-lspconfig",
    tags = {
      "lsp",
    },
    description = [[
      nvim-lspconfig. nvim-lspconfig is a collection of LSP server configurations for the Nvim LSP client. View all configs, or run :help lspconfig-all from Nvim.
    ]],
    lazy = false,
    -- enabled = false,
    config = function()
      require "configs.lspconfig"
    end,
  },
}
