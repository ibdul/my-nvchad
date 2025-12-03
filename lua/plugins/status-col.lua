return {
	"luukvbaal/statuscol.nvim",
  -- lazy=false,
  tags = {
    "ui",
    "status column",
  },
  description = "Status column plugin that provides a configurable 'statuscolumn' and click handlers.",
  event = "VeryLazy",
	config = function()
		local builtin = require("statuscol.builtin")
		require("statuscol").setup({
			relculright = true,
			segments = {
				{ text = { " ", builtin.foldfunc }, click = "v:lua.ScFa" },
				{ text = { "  %s" },                click = "v:lua.ScSa" },
				{ text = { builtin.lnumfunc, " " }, click = "v:lua.ScLa" },
			},
		})
	end
}
