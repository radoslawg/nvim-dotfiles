-- Provides a list of colorscheme plugins for Neovim.
return {
  {
    "oskarnurm/koda.nvim",
    name = "koda",
    priorty = 1000,
    opts = {
      styles = {
        functions = { bold = true },
        keywords = {},
        comments = { italic = true },
        strings = { bold = false },
        constants = {}, -- includes numbers, booleans
      },
      colors = {
        fg = "#fafaf0",
        string = "#e3a857",
        const = "#ffa07a",
        keyword = "#bbbbbb",
      },
    },
  },
  {
    "phha/zenburn.nvim",
    opts = {},
    priority = 1000,
  },
  { "bluz71/vim-moonfly-colors", name = "moonfly", priority = 1000 },
  {
    "scottmckendry/cyberdream.nvim",
    priority = 1000,
    opts = {},
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000, opts = { transparent_background = false } },
  { "vague2k/vague.nvim", name = "vague", priority = 1000 },
  { "EdenEast/nightfox.nvim", name = "nightfox", priority = 1000 },
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    priority = 1000,
    opts = {
      colors = {
        palette = {
          -- change all usages of these colors
          dragonBlack3 = "#080606",
          dragonWhite = "#e5e9e5",
        },
      },
    },
  },
  { "folke/tokyonight.nvim", name = "tokyonight", priority = 1000 },
  { "navarasu/onedark.nvim", name = "onedark", priority = 1000 },
  { "rose-pine/neovim", name = "rose-pine", priority = 1000 },
  { "projekt0n/github-nvim-theme", name = "github-theme", priority = 1000 },
  {
    "f4z3r/gruvbox-material.nvim",
    name = "gruvbox-material",
    priority = 1000,
    opts = {
      background = { transparent = false },
    },
  },
  {
    "ellisonleao/gruvbox.nvim",
    name = "gruvbox",
    priority = 1000,
    opts = {
      transparent_mode = true,
      dim_inactive = true,
      terminal_colors = true,
    },
  },
}
