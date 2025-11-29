return {
  "https://git.sr.ht/~nedia/auto-format.nvim",
  description = [[
    Extremely simple auto format plugin.
    We're creating an autocmd that runs on BufWritePre - the primary function of this plugin is to prefer null-ls for formatting over our LSP client.
  ]],
  event = "BufWinEnter",
  config = function()
    require("auto-format").setup()
  end
}
