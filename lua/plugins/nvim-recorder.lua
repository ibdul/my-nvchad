return {
	"chrisgrieser/nvim-recorder",
	dependencies = {
		"rcarriga/nvim-notify", -- optionalS
		opts = {},            -- required even with default settings, since it calls `setup()`
		config = function()
			require("recorder").setup({
				slots = { "q", "w" },

				mapping = {
					startStopRecording = "q",
					playMacro = "@",
					switchSlot = "<C-q>",
					editMacro = "cq",
					deleteAllMacros = "dq",
					yankMacro = "yq",
					-- ⚠️ this should be a string you don't use in insert mode during a macro
					addBreakPoint = "##",
				},
			})

			local lualineZ = require("lualine").get_config().sections.lualine_z or {}
			local lualineX = require("lualine").get_config().sections.lualine_x or {}
			table.insert(lualineZ, { require("recorder").recordingStatus })
			table.insert(lualineX, { require("recorder").displaySlots, })

			require("lualine").setup {
				sections = {
					lualine_x = lualineX,
					lualine_z = lualineZ
				},
			}
		end,
	},
}
