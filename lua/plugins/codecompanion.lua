-- Provides a powerful AI code generation and editing tool for Neovim.
return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "ravitemer/mcphub.nvim",
  },
  opts = {
    -- NOTE: The log_level is in `opts.opts`
  },
}
