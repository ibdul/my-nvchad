return {
  'dense-analysis/ale',
  tags = {
    "linting",
  },
  description=[[
    Asynchronous Lint Engine
    ALE (Asynchronous Lint Engine) is a plugin providing linting (syntax checking and semantic errors)
    in Neovim 0.7.0+ and Vim 8.0+ while you edit your text files, and acts as a Vim Language Server Protocol client.
    ]],
  event = "VeryLazy",
  config = function()
    -- Configuration goes here.
    local g = vim.g

    g.ale_ruby_rubocop_auto_correct_all = 1

    g.ale_linters = {
      ruby = { 'rubocop', 'ruby' },
      lua = { 'lua_language_server' },
    }
  end,
}
