local  back_end = "mini" -- "notify"

return {
  "folke/noice.nvim",
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
