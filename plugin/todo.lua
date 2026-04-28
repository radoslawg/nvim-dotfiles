vim.pack.add {
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/folke/todo-comments.nvim',
}
require('todo-comments').setup({ signs = true })
-- TODO: Todo me!
-- FIX: Fix me!
-- PERF: Perf me!
-- HACK: Hack me!
-- NOTE: Note me!
-- WARNING: Warning me!
-- TEST: Test me!
--
vim.keymap.set("n", "<leader>ttt", function() require("todo-comments").jump_next() end, { desc = "Next todo comment" })

vim.keymap.set("n", "<leader>ttT", function() require("todo-comments").jump_prev() end,
  { desc = "Previous todo comment" })
vim.keymap.set("n", "<leader>tts", "<cmd>TodoFzfLua<cr>", { desc = "Show all [t]odos [t]ag[s]" })
