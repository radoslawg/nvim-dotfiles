-- A file explorer for Neovim.
return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    { "<leader>nf", "<cmd>NvimTreeFindFileToggle<cr>", mode = "n", desc = "[f]ind file in Tree" },
    { '<leader>nn', "<cmd>NvimTreeToggle<cr>",         mode = "n", desc = "[n]vim Tree Toggle" },
  },
  opts = {},
}