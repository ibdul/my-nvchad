return {
  'doctorfree/cheatsheet.nvim',
  description = [[
    A searchable cheatsheet for neovim from within the editor using Telescope (fallback to displaying in a floating window if Telescope is not installed)
    with command autofill, bundled cheats for the editor, vim plugins, nerd-fonts, etc because hoomans suck at remembering stuff:
    ]],
  event = 'VeryLazy',
  dependencies = {
    { 'nvim-telescope/telescope.nvim' },
    { 'nvim-lua/popup.nvim' },
    { 'nvim-lua/plenary.nvim' },
  },
  config = function()
    local ctactions = require 'cheatsheet.telescope.actions'
    require('cheatsheet').setup {
      bundled_cheetsheets = {
        enabled = { 'default', 'lua', 'markdown', 'regex', 'netrw', 'unicode' },
        disabled = { 'nerd-fonts' },
      },
      bundled_plugin_cheatsheets = {
        enabled = {
          'auto-session',
          'goto-preview',
          'octo.nvim',
          'telescope.nvim',
          'vim-easy-align',
          'vim-sandwich',
        },
        disabled = { 'gitsigns' },
      },
      include_only_installed_plugins = true,
      telescope_mappings = {
        ['<CR>'] = ctactions.select_or_fill_commandline,
        ['<A-CR>'] = ctactions.select_or_execute,
        ['<C-Y>'] = ctactions.copy_cheat_value,
        ['<C-E>'] = ctactions.edit_user_cheatsheet,
      },
    }
  end,
}
