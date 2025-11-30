return {
  'zeioth/garbage-day.nvim',
  description = [[
    Garbage collector that stops inactive LSP clients to free RAM
  ]],
  dependencies = 'neovim/nvim-lspconfig',
  event = 'VeryLazy',
  opts = {},
}
