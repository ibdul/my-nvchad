local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    -- css = { "prettier" },
    -- html = { "prettier" },
  },


  notify_on_error = false,
  format_on_save = function(bufnr)
    -- Disable "format_on_save lsp_fallback" for languages that don't
    -- have a well standardized coding style. You can add additional
    -- languages here or re-enable it for the disabled ones.
    local disable_filetypes = { c = true, cpp = true }
    local lsp_format_opt
    if disable_filetypes[vim.bo[bufnr].filetype] then
      lsp_format_opt = 'never'
    else
      lsp_format_opt = 'fallback'
    end
    return {
      timeout_ms = 500,
      lsp_format = lsp_format_opt,
    }
  end,

}

    -- event = { 'BufWritePre' },
    -- cmd = { 'ConformInfo' },
    -- keys = {
    --   {
    --     '<leader>l',
    --     function()
    --       require('conform').format { async = true, lsp_format = 'fallback' }
    --     end,
    --     mode = '',
    --     desc = '[F]ormat buffer',
    --   },
    -- },
    -- opts = {
    -- }

-- Create a new augroup for LSP formatting to manage autocmds
local augroup = vim.api.nvim_create_augroup("LspFormatting", { clear = true })

-- Attach this to your LSP client's on_attach callback
-- (This example assumes you have an lspconfig setup)
vim.api.nvim_create_autocmd("LspAttach", {
  group = augroup,
  callback = function(args)
    local bufnr = args.buf
    local client = vim.lsp.get_client_by_id(args.data.client_id)

    -- Check if the attached LSP client supports formatting
    if client and client.supports_method("textDocument/formatting") then
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ async = false }) -- Use async = false for synchronous formatting
        end,
      })
    end
  end,
})

return options
