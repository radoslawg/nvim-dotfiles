vim.pack.add({ "https://github.com/rose-pine/neovim",
  "https://github.com/reobin/olive-crt.nvim",
  "https://github.com/metalelf0/black-metal-theme-neovim",
  "https://github.com/vague-theme/vague.nvim",
  "https://github.com/oskarnurm/koda.nvim", })

require("koda").setup({
  transparent = true,
})
vim.cmd("colorscheme koda-dark")

-- require("black-metal").setup({
--   -----MAIN OPTIONS-----
--   --
--   -- Can be one of: bathory | burzum | dark-funeral | darkthrone | emperor | gorgoroth | immortal | impaled-nazarene | khold | marduk | mayhem | nile | taake | thyrfing | venom | windir
--   theme = "dark-funeral",
--   -- Can be one of: 'light' | 'dark', or set via vim.o.background
--   variant = "dark",
--   transparent = true,
-- })
--require("black-metal").load()
-- vim.cmd("colorscheme bathory")
