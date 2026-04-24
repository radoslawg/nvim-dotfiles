-- Provides a smooth, 'smeared' cursor animation effect.
vim.pack.add({ "https://github.com/sphamba/smear-cursor.nvim" })
require("smear_cursor").setup({
  stiffness = 0.8,               -- 0.6      [0, 1]
  trailing_stiffness = 0.5,      -- 0.3      [0, 1]
  distance_stop_animating = 0.5, -- 0.1      > 0
})
