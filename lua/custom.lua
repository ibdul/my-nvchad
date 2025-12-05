-- fix auto focus into signature help popup
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
  vim.lsp.handlers.signature_help,
  {
    focusable = false
  }
)
