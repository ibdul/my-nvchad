return {
  'nvim-telescope/telescope-live-grep-args.nvim',
  dependencies = {
    'nvim-telescope/telescope.nvim',
  },
  config = function()
    local telescope = require 'telescope'
    local lga_actions = require 'telescope-live-grep-args.actions'

    telescope.setup {
      extensions = {
        live_grep_args = {
          auto_quoting = true, -- enable/disable auto-quoting
          -- define mappings, e.g.
          mappings = { -- extend mappings
            i = {
              ['<C-k>'] = lga_actions.quote_prompt(),
              ['<C-i>'] = lga_actions.quote_prompt { postfix = ' --iglob ' },
              -- freeze the current list and start a fuzzy search in the frozen list
              ['<C-space>'] = lga_actions.to_fuzzy_refine,
            },
          },

          n = {
            ['<C-q>'] = {
              function(p_bufnr)
                -- send results to quick fix list
                require('telescope.actions').send_to_qflist(p_bufnr)
                local qflist = vim.fn.getqflist()
                local paths = {}
                local hash = {}
                for k in pairs(qflist) do
                  local path = vim.fn.bufname(qflist[k]['bufnr']) -- extract path from quick fix list
                  if not hash[path] then -- add to paths table, if not already appeared
                    paths[#paths + 1] = path
                    hash[path] = true -- remember existing paths
                  end
                end
                -- show search scope with message
                vim.notify('find in ...\n  ' .. table.concat(paths, '\n  '))
                -- execute live_grep_args with search scope
                require('telescope').extensions.live_grep_args.live_grep_args { search_dirs = paths }
              end,
              type = 'action',
              opts = {
                nowait = true,
                silent = true,
                desc = 'Live grep on results',
              },
            },
          },
          -- ... also accepts theme settings, for example:
          -- theme = "dropdown", -- use dropdown theme
          -- theme = { }, -- use own theme spec
          -- layout_config = { mirror=true }, -- mirror preview pane
        },
      },
    }

    telescope.load_extension 'live_grep_args'
  end,
}
