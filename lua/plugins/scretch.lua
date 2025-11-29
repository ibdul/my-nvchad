return {
  '0xJohnnyboy/scretch.nvim',
  event="VeryLazy",
  description = [[
    Scretch.nvim is a plugin to easily create and manage scratch files 🙂.
  ]],
  dependencies = { 'nvim-telescope/telescope.nvim' },
  -- or
  -- dependencies = { 'ibhagwan/fzf-lua' },
  config = function()
    require('scretch').setup({
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    })
  end,
}
