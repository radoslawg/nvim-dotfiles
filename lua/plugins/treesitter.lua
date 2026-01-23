-- Provides a Treesitter configuration with additional modules for enhanced code editing and navigation.
return {
  { -- Highlight, edit, and navigate code
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = false,
    config = function()
      local ts = require("nvim-treesitter")
      ts.install({
        "bash",
        "lua",
        "luadoc",
        "markdown",
        "markdown_inline",
        "vim",
        "vimdoc",
        "powershell",
        "cpp",
        "rust",
        "go",
      })
      ts.setup()
    end,
  },
  {
    "MeanderingProgrammer/treesitter-modules.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = {
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<M-o>",
          node_incremental = "<M-o>",
          scope_incremental = false,
          node_decremental = "<M-i>",
        },
      },
    },
  }
}
