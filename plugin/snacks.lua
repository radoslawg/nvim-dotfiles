vim.pack.add({ "https://github.com/folke/snacks.nvim" })
require("snacks").setup({
  bigfile = { enabled = true },
  dashboard = { enabled = false },
  explorer = { enabled = false },
  indent = { enabled = true },
  input = { enabled = true },
  image = { enabled = true },
  picker = { enabled = true },
  notifier = { enabled = true },
  quickfile = { enabled = true },
  scope = { enabled = true },
  scroll = { enabled = true },
  statuscolumn = { enabled = true },
  words = { enabled = true },
  lazygit = { enabled = true },
})

local map = vim.keymap.set
local opts = { noremap = true, silent = true }
-- picker
local s_picker = require("snacks").picker

map("n", "<leader>fg", s_picker.grep, { desc = "[f]ind by [G]rep in files", unpack(opts) })
map("n", "<leader>ff", s_picker.files, { desc = "[f]ind [f]iles", unpack(opts) })
map("n", "<leader>fb", s_picker.buffers, { desc = "[f]ind [b]uffers", unpack(opts) })
map("n", "<leader>f.", s_picker.recent, { desc = "[f]ind recent files[.]", unpack(opts) })
map("n", "<leader>cd", s_picker.diagnostics, { desc = "[c]ode [d]iagnostics", unpack(opts) })
map("n", "<leader>f/", s_picker.grep_buffers, { desc = "[f]ind by grep in [b]buffers", unpack(opts) })
map("n", "<leader>eE", s_picker.explorer, { desc = "Snack's [eE]xplorer", unpack(opts) })
map("n", "<leader>fk", s_picker.keymaps, { desc = "[f]ind [k]eymaps", unpack(opts) })
map("n", "<leader>cr", s_picker.lsp_references, { desc = "[c]ode [r]eferences", unpack(opts) })

-- zen

local s_zen = require("snacks").zen

map("n", "<leader>zz", s_zen.zen, { desc = "[z]en toggle", unpack(opts) })
map("n", "<leader>zo", s_zen.zoom, { desc = "[z]en z[o]om", unpack(opts) })

-- scratch

local s_scratch = require("snacks").scratch

map("n", "<leader>.", function() s_scratch() end, { desc = "Scratch buffer", unpack(opts) })
map("n", "<leader>S", s_scratch.select, { desc = "[S]elect scratch buffer", unpack(opts) })

-- lazygit

local s_lazygit = require("snacks").lazygit
map("n", "<leader>gg", s_lazygit.open, { desc = "Lazy [g]it", unpack(opts) })
map("n", "<leader>gL", s_lazygit.log, { desc = "Lazy [g]it [L]og", unpack(opts) })
map("n", "<leader>gl", s_lazygit.log_file, { desc = "Lazy [g]it file [l]og", unpack(opts) })
