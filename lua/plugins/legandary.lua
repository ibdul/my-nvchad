return {
  "mrjones2014/legendary.nvim",
  tags = {
    "keymap",
    "telescope",
    "which-key",
  },
  description = [[
    Define your keymaps, commands, augroup/autocmds, and even arbitrary Lua functions to run on the fly, as simple Lua tables, then bind them with legendary.nvim
  ]],
  enable = false,
  -- since legendary.nvim handles all your keymaps/commands,
  -- its recommended to load legendary.nvim before other plugins
  priority = 10000,
  lazy = false,
  -- sqlite is only needed if you want to use frecency sorting
  -- dependencies = { 'kkharji/sqlite.lua' }
}
