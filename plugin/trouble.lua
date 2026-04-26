vim.pack.add({ "https://github.com/folke/trouble.nvim" })

require("trouble").setup({})

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Diagnostics (Trouble)", unpack(opts) })
map(
  "n",
  "<leader>tX",
  "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
  { desc = "Buffer Diagnostics (Trouble)", unpack(opts) }
)
map(
  "n",
  "<leader>ts",
  "<cmd>Trouble symbols toggle focus=false<cr>",
  { desc = "LSP Definitions / references / ... (Trouble)", unpack(opts) }
)
map(
  "n",
  "<leader>tl",
  "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
  { desc = "LSP Definitions / references / ... (Trouble)", unpack(opts) }
)
map("n", "<leader>tL", "<cmd>Trouble loclist toggle<cr>", { desc = "Location list (Trouble)", unpack(opts) })
map("n", "<leader>tQ", "<cmd>Trouble qflist toggle<cr>", { desc = "Quickfix List (Trouble)", unpack(opts) })
