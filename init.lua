require("config.lazy")
require("config.keymaps")
require("config.lsp")
vim.o.background = "dark" -- or "light" for light mode

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

vim.cmd([[colorscheme rose-pine-moon]])
