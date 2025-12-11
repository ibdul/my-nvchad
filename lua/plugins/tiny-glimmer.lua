return {
  "rachartier/tiny-glimmer.nvim",
  tags = {
    "ui",
    "animation",
  },
  description =
  "A Neovim plugin that adds smooth, customizable animations to text operations like yank, paste, search, undo/redo, and more.",
  event = "VeryLazy",
  priority = 10, -- Low priority to catch other plugins' keybindings
  config = function()
    require("tiny-glimmer").setup()
  end,
}
