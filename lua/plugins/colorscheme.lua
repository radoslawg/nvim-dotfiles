-- Provides a list of colorscheme plugins for Neovim.
return {
  { "catppuccin/nvim",             name = "catppuccin",       priority = 1000 },
  { "vague2k/vague.nvim",          name = "vague",            priority = 1000 },
  { "EdenEast/nightfox.nvim",      name = "nightfox",         priority = 1000 },
  { "rebelot/kanagawa.nvim",       name = "kanagawa",         priority = 1000 },
  { "folke/tokyonight.nvim",       name = "tokyonight",       priority = 1000 },
  { "navarasu/onedark.nvim",       name = "onedark",          priority = 1000 },
  { "rose-pine/neovim",            name = "rose-pine",        priority = 1000 },
  { "projekt0n/github-nvim-theme", name = "github-theme",     priority = 1000 },
  { "f4z3r/gruvbox-material.nvim", name = "gruvbox-material", priority = 1000, lazy = false },
  {
    "ellisonleao/gruvbox.nvim",
    name = "gruvbox",
    priority = 1000,
    opt = {
      transparent_mode = true,
      dim_inactive = true,
      terminal_colors = true
    },
  },

}
