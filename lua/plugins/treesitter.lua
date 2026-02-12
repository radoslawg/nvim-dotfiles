-- Provides a Treesitter configuration with additional modules for enhanced code editing and navigation.
return {
  { -- Highlight, edit, and navigate code
    "nvim-treesitter/nvim-treesitter",
    config = function()
      local filetypes = {
        "bash",
        "c",
        "diff",
        "html",
        "lua",
        "luadoc",
        "markdown",
        "markdown_inline",
        "query",
        "vim",
        "vimdoc",
        "yaml",
        "python",
        "html",
        "go",
        "rust",
        "cpp",
        "powershell",
        "c_sharp",
        "json",
        "javascript",
        "typescript",
      }
      require("nvim-treesitter").install(filetypes)
      vim.api.nvim_create_autocmd("FileType", {
        pattern = filetypes,
        callback = function()
          vim.treesitter.start()
        end,
      })
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
  },
}
