vim.pack.add({ "https://github.com/folke/snacks.nvim" })
require("snacks").setup({
  bigfile = { enabled = true },
  dashboard = { enabled = false },
  explorer = { enabled = false },
  indent = { enabled = true },
  input = { enabled = true },
  picker = { enabled = true },
  notifier = { enabled = true },
  quickfile = { enabled = true },
  scope = { enabled = true },
  scroll = { enabled = true },
  statuscolumn = { enabled = true },
  words = { enabled = true },
})

local map = vim.keymap.set

map("n", "<leader>ff", function() Snacks.picker.files() end, { desc = "[f]ind [f]iles" })
map("n", "<leader>fb", function() Snacks.picker.buffers() end, { desc = "[f]ind [b]uffers" })
map("n", "<leader>f.", function() Snacks.picker.recent() end, { desc = "[f]ind recent files[.]" })
