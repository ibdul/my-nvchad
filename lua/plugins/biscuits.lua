return {
  'code-biscuits/nvim-biscuits',
  description = [[
     Code Biscuits are in-editor annotations usually at the end of a closing tag/bracket/parenthesis/etc. They help you get the context of the end of that AST node so you don't have to navigate to find it.
  ]],
  event="VeryLazy",
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
  },
  opts = {
    -- Config goes here
  },
  config  = function ()
    require('nvim-biscuits').setup ({
      cursor_line_only = true,
      show_on_start = true ,
      toggle_keybind = "<leader>cb",
    })
  end,
}
