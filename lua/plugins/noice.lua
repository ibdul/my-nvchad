local  back_end = "mini" -- "notify"

return {
  "folke/noice.nvim",
  tags = {
    "notify",
    "ui",
  },
  description = [[
    Noice is using the new experimental vim.ui_attach API, so issues are to be expected.
  ]],
  event = "VeryLazy",
  opts = {
    filter = {
      event = back_end,
    },
    messages = {
      view = back_end,
    },
    notify = {
      view = back_end,
    },
  },
  dependencies = {
    "MunifTanjim/nui.nvim",
    }
}
