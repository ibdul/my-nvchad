return {
  'nvimdev/lspsaga.nvim',
  tags = {
    'code',
    'diagnostics',
  },
  description = [[
    does many things including;
    - Breadcrumbs
    - Callhierarchy
    - Code Action
    - Definition
    - Diagnostic
    - Finder
    - Float Terminal
    - Hover
    - Implement
    - LightBulb
    - Outline
    - Rename
  ]],
  event = "VeryLazy",
  -- enabled= false,
  config = function()
    require('lspsaga').setup({
      lightbulb = {
        enable = false,
        enable_in_insert = false,
        sign = false,
        sign_priority = 40,
        virtual_text = false,
      },
      symbol_in_winbar = {
        enable = false,
        color_mode = false,
      }
      --[[ ui = { ]]
      --[[ 	code_action = "󰌵" ]]
      --[[ } ]]

		})

    local lualineC = require("lualine").get_config().sections.lualine_c or {}

    local function lualine_output()
      return require('lspsaga.symbol.winbar').get_bar() or ""
    end

    table.insert(lualineC, {
        lualine_output
    })

    require("lualine").setup {
      sections = {
        lualine_c = lualineC,
      },
    }

	end,
	dependencies = {
		'nvim-treesitter/nvim-treesitter', -- optional
		'nvim-tree/nvim-web-devicons'    -- optional
	}
}
