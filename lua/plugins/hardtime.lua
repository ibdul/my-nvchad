return {
  "m4xshen/hardtime.nvim",
  description = [[
    Block repeated keys within a short period of time
    Provide hints for faster Vim motion
    Get report of your most common bad habits
        :Hardtime report
  ]],
  lazy = "VeryLazy",
  dependencies = { "MunifTanjim/nui.nvim" },
  opts = {},
  config = function()
    require("hardtime").setup()
  end,
}
