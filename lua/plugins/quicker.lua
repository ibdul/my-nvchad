return {
  'stevearc/quicker.nvim',
  description = [[
    Improved UI and workflow for the Neovim quickfix
  ]],
  ft = "qf",
  ---@module "quicker"
  ---@type quicker.SetupOptions
  opts = {},
  events = "VeryLazy",
  config = function ()
    require("quicker").setup()
    vim.keymap.set("n", "<leader>q", function()
      require("quicker").toggle()
    end, {
        desc = "Toggle quickfix",
      })
  end,
}
