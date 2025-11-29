return {
  "nxhung2304/lastplace.nvim",
  event = "VeryLazy",
  description = [[
    Intelligently restore your cursor position when reopening files in Neovim
  ]],
  config = function()
    require("lastplace").setup({
      -- your configuration here
    })
  end,
}
