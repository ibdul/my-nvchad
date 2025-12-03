return {
  'windwp/nvim-ts-autotag',
  event = "VeryLazy",
  description = "Use treesitter to autoclose and autorename tags",
  config = function()
    require('nvim-ts-autotag').setup {
      opts = {
        -- Defaults
        enable_close = true, -- Auto close tags
        enable_rename = true, -- Auto rename pairs of tags
        enable_close_on_slash = false, -- Auto close on trailing </
      },
    }
  end,
}
