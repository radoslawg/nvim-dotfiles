-- A blazing fast and beautiful statusline for Neovim.
return {
  'nvim-lualine/lualine.nvim',
  version = '*', -- latest stable release
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    theme = 'zenburn',
    icons_enabled = true,
  },
  Lazy = false,
}
