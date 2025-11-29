return {
  'gisketch/triforce.nvim',
  description = [[
    Triforce adds a bit of RPG flavor to your coding — XP, levels, and achievements while you work.
  ]],
  event="VeryLazy",
  dependencies = { 'nvzone/volt' },
  config = function()
    require('triforce').setup({
      -- Optional: Add your configuration here
      keymap = {
        show_profile = '<leader>tp', -- Open profile with <leader>tp
      },
    })
  end,
}
