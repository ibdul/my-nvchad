return {
  'ray-x/lsp_signature.nvim',
  tags = {
    "ui",
    "hint",
    "lsp",
  },
  description = [[
    Show function signature when you type
  ]],
  event = 'InsertEnter',
  opts = {
    bind = true,
    handler_opts = {
      border = 'rounded',
    },
  },
  config = function(_, opts)
    require('lsp_signature').setup(opts)
  end,
}
