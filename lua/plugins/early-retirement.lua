return {
  'chrisgrieser/nvim-early-retirement',
  description = [[
    Send buffers into early retirement by automatically closing them after x minutes of inactivity. Makes the bufferline or :bnext less crowded.
  ]],
  event = 'VeryLazy',
  -- config = true,
  config = function () 
    require("early-retirement").setup({}) 
  end,
}
