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
    local lazy = require("lazy")
    checker.check()
    local updates = #checker.updated
    vim.api.nvim_echo({ { "Updates: " .. updates } }, true, {})
    if updates > 0 then
      vim.api.nvim_echo({ { "Jestem" }, }, true, {})
      lazy.sync({ show = false }) -- Sync plugins without showing the UI
    end
  end,
})
