return {
  "ahmedkhalf/project.nvim",
  tags = {
    "project management", 
    "telescope",
  },
  description = "project.nvim is an all in one neovim plugin written in lua that provides superior project management. Telescope Integration",
  event = "VeryLazy",
  config = function()
    require("project_nvim").setup {}
    require('telescope').load_extension('projects')
  end
}
