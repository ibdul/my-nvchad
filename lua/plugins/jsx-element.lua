return {
  'mawkler/jsx-element.nvim',
  description = [[
    JSX/TSX text-objects and motions using Treesitter.
  ]],
  event = "VeryLazy",
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-treesitter/nvim-treesitter-textobjects',
  },
  ft = { 'typescriptreact', 'javascriptreact', 'javascript' },
  opts = {},
}
