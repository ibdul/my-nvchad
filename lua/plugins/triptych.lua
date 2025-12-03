return {
  'ibdul/triptych.nvim', -- main repo = 'simonmclean/triptych.nvim',
  tags = {
    "ui",
    "file browser",
  },
  description = "Directory browser for Neovim, inspired by Ranger",
  dependencies = {
    'nvim-lua/plenary.nvim', -- required
    'nvim-tree/nvim-web-devicons', -- optional for icons
    'antosha417/nvim-lsp-file-operations' -- optional LSP integration
  },
  opts = {  -- config options here
    mappings  = {
      quit = "<esc>",
      copy = "y",
    },
    options = {
      display_directory_in_title = true,
      show_hidden = true,
      collapse_dirs = false,
      line_numbers = {
        enabled = true,
        relative = true,
      },
    },
  },
  keys = {
    { '<leader>d', ':Triptych<CR>' },
  },
}
