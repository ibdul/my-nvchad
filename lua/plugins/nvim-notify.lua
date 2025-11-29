return { 
  'rcarriga/nvim-notify',
  lazy = false,
  config = function ()
    local notify = require("notify")
    notify.setup({
      render = "compact",
      top_down = false,
      max_width = 40,
      max_height = 10,
    })
    vim.notify = notify
  end
}
