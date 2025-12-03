return {
	'nvim-tree/nvim-web-devicons',
  description = "adds new icons as they are introduced to Nerd Fonts",
  event = "VeryLazy",
  opts = {},
  config = function()
    require'nvim-web-devicons'.setup ({})
  end,
}
