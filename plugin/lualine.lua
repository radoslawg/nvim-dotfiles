-- A blazing fast and beautiful statusline for Neovim.
vim.pack.add({
  { src = "https://github.com/nvim-lualine/lualine.nvim", version = vim.version.range("*") },
  "https://github.com/nvim-tree/nvim-web-devicons" }
)
require("lualine").setup({
  theme = "rose-pine",
  icons_enabled = true,
})
