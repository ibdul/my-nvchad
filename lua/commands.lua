vim.api.nvim_create_user_command('SwitchTheme', function(opts)
  require('nvchad.themes').open()
end, {})

