return {
  'VidocqH/lsp-lens.nvim',
  description = [[
    Neovim plugin for displaying reference and definition info upon functions like JB's IDEA.
  ]],
  event = "VeryLazy",
  config = function ()
    require'lsp-lens'.setup({})
  end,
}
