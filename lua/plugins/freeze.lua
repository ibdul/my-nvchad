return {
  'charm-and-friends/freeze.nvim',
  tags={
    "snapshot",
    "image",
    "code",
    "ui",
  },
  description = "Generate images of code and terminal output.",
  event="VeryLazy",
  config = function()
    require('freeze').setup({
      command = "freeze",
      show_line_numbers = true,
      -- open = true, -- Open the generated image after running the command
      output = function()
        return "./" .. os.date("%Y-%m-%d_%H-%M-%S") .. "_freeze.png"
      end,
      theme = "catppuccin-mocha",
    })
    vim.api.nvim_set_keymap('n', '<leader>sf', '<cmd>Freeze<cr>', {})
    vim.api.nvim_set_keymap('v', '<leader>sf', '<cmd>Freeze<cr>', {})
    vim.api.nvim_set_keymap('n', '<leader>so', '<cmd>Freeze open<cr>', {})
  end
}
