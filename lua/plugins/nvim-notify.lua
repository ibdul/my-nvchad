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
    -- vim.notify = notify

    -- vim.notify = function(msg, level, opts)
    --   opts = opts or {}
    --   opts.on_open = function(win)
    --     local config = vim.api.nvim_win_get_config(win)
    --     config.anchor = "SE"  -- Bottom right
    --     config.row = vim.o.lines - 10  -- Adjust as needed
    --     config.col = vim.o.columns - 40 -- Adjust as needed
    --     vim.api.nvim_win_set_config(win, config)
    --   end
    --   require("notifier")(msg, level, opts)
    -- end

  end
}
