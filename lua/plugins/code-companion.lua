return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  event = "VeryLazy",
  opts = {
    -- NOTE: The log_level is in `opts.opts`
    --
    strategies = {
      -- Configures the default model for running custom prompts.
      cmd = {
        adapter = "ollama",
        model = "gemma3:270m",
      },

      -- Configures the model for the interactive chat window (:CompanionChat).
      chat = {
        adapter = "ollama",
        model = "gemma3:270m",
      },

      -- Configures the model for any action that modifies code directly in your buffer
      -- using the 'inline' strategy.
      inline = {
        adapter = "ollama",
        model = "gemma3:270m",
      },
    },
    opts = {
      log_level = "DEBUG", -- or "TRACE"
      -- This 'strategies' table sets the DEFAULT AI PROVIDER and MODEL
      -- for different categories of actions within the plugin.
    },
  },
}
