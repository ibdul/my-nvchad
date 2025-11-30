return {
  -- Add indentation guides even on blank lines
  'lukas-reineke/indent-blankline.nvim',
  description  = [[
    This plugin adds indentation guides to Neovim. It uses Neovim's virtual text feature and no conceal
    ]],
  event = "VeryLazy",
  -- Enable `lukas-reineke/indent-blankline.nvim`
  -- See `:help ibl`
  main = 'ibl',
  opts = {},
  config = function ()
    require("ibl").setup()
  end
}
