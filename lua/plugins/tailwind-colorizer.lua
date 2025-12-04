return {
	"roobert/tailwindcss-colorizer-cmp.nvim",
  event = "VeryLazy",
  tags = {
    "ui",
    "cmp",
    "completion",
    "tailwind"
  },
  description = " A Neovim plugin to add vs-code-style TailwindCSS color hints to the nvim-cmp completion menu.",
	config = function()
		local status_ok, colorizer = pcall(require, "tailwindcss-colorizer-cmp")

		if not status_ok then
			return
		end

		colorizer.setup({
			color_square_width = 2,
		})

		require("cmp").config.formatting = {
			format = colorizer.formatter
		}
	end
}
