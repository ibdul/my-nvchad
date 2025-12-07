return {
	"L3MON4D3/LuaSnip",
	-- follow latest release.
  tags = {
    "snippet",
    "lsp",
    "completion",
  },
  description = [[
    Tabstops
    Text-Transformations using Lua functions
    Conditional Expansion
    Defining nested Snippets
    Filetype-specific Snippets
    Choices
    Dynamic Snippet creation
    Regex-Trigger
    Autotriggered Snippets
    Easy Postfix Snippets
    Fast
    Parse LSP-Style Snippets either directly in Lua, as a VSCode package or a SnipMate snippet collection.
    Expand LSP-Snippets with nvim-compe (or its' successor, nvim-cmp (requires cmp_luasnip))
    Snippet history (jump back into older snippets)
    Resolve filetype at the cursor using Treesitter
  ]],
  event = "VeryLazy",
	version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!).
	build = "make install_jsregexp"
}
