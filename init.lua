require("config.options")
require("config.lazy")
require("config.keymaps")
require("config.lsp")

local backupdir = vim.fn.expand("~/.vim/backup/")
local undodir = vim.fn.expand("~/.vim/undo/")
local swapdir = vim.fn.expand("~/.vim/swap/")
if vim.fn.isdirectory(undodir) == 0 then
  vim.fn.mkdir(undodir, "p")
end
if vim.fn.isdirectory(swapdir) == 0 then
  vim.fn.mkdir(swapdir, "p")
end
if vim.fn.isdirectory(backupdir) == 0 then
  vim.fn.mkdir(backupdir, "p")
end

vim.cmd([[colorscheme zenburn]])

vim.api.nvim_create_autocmd("User", {
  pattern = "VeryLazy",
  callback = function()
    local checker = require("lazy.manage.checker")
    checker.check()
    local status = require("lazy.status")
    if status.has_updates then
      --      vim.api.nvim_echo({ { "Status.has_updates" } }, true, {})
      local lazy = require("lazy")
      lazy.sync({ show = false }) -- Sync plugins without showing the UI
    end
  end,
})
