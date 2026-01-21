-- Options should be taken from Kickstart
--
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`
vim.g.have_nerd_font = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2

vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

-- Make line numbers default
vim.opt.number = true
-- You can also add relative line numbers, to help with jumping.
--  Experiment for yourself to see if you like it!
vim.opt.relativenumber = true

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = "a"

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Enable break indent
vim.opt.breakindent = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight yanked text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.opt.termguicolors = true                       -- Enable 24-bit RGB color in the TUI

vim.opt.autochdir = false                          -- For whatever reason, it makes neovim startup slower

vim.opt.winblend = 10                              -- Transparency for floating windows_color
vim.opt.pumblend = 5                               -- Transparency for popup menu

vim.opt.backup = true                              -- Enable backup filesystem
vim.opt.backupdir = vim.fn.expand("~/.vim/backup") -- Set backup directory
vim.opt.undofile = true                            -- Enable persistent undo
vim.opt.undodir = vim.fn.expand("~/.vim/undo")     -- Set undo directory
vim.opt.swapfile = true                            -- Disable swapfile
vim.opt.directory = vim.fn.expand("~/.vim/swap")   -- Set swap directory

vim.opt.updatetime = 300                           -- Faster completion_item
vim.opt.timeoutlen = 1000                          -- 1s. to complete a mapped sequence
vim.opt.autoread = true                            -- Auto reload files changed outside of nvim
vim.opt.autowrite = true                           -- Auto save before commands like :next and :make
vim.opt.autowriteall = true                        -- Auto save when switching buffers or windows

vim.opt.clipboard = "unnamedplus"                  -- Use system clipboard

vim.opt.iskeyword:append({ "-", "_" })             -- Treat dash and underscore as part of a word
