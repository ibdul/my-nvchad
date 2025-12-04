return { 
  'norcalli/nvim-colorizer.lua',
  tags = {
    "ui"
  },
  description = "A high-performance color highlighter for Neovim which has no external dependencies! Written in performant Luajit.",
  event="VeryLazy",
  config = function ()
    require'colorizer'.setup()
  end
}
