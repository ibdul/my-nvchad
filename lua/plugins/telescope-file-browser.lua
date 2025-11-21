return {
  'nvim-telescope/telescope-file-browser.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
  config = function()
    local fb_actions = require('telescope').extensions.file_browser.actions

    require('telescope').setup {
      extensions = {
        file_browser = {
          theme = 'ivy',
          hijack_netrw = true,
          mappings = {
            ['n'] = {
              ['h'] = fb_actions.goto_parent_dir,
              ['l'] = fb_actions.open_dir,
              ['.'] = fb_actions.toggle_hidden,
            },
          },
        },
      },
    }
    require('telescope').load_extension 'file_browser'
  end,
}
