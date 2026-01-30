local opts = { noremap = true, silent = true }
local conform = require("conform")

vim.keymap.set("n", "Q", "<nop>") -- Disable Ex mode 

vim.keymap.set("n", "<ESC>", "<CMD>nohlsearch<CR>", { desc = "Remove highlight", unpack(opts) })
-- Save file without formatting
vim.keymap.set("n", "<leader>sw", "<CMD>noautocmd w<CR>", { desc = "Save file without formatting", unpack(opts) })
-- Save
vim.keymap.set("n", "<leader>w", "<CMD>w<CR>", { desc = "Save file", unpack(opts) })

-- Delete single character without copying into register
vim.keymap.set("n", "x", '"_x', { desc = "Delete single character without copying into register", unpack(opts) })

vim.keymap.set("n", "<leader>e", "<CMD>Oil --float<CR>", { desc = "[e]xplore files in Oil", unpack(opts) })

vim.keymap.set("n", "<leader>to", "<CMD>tabnew<CR>", { desc = "Open new tab", unpack(opts) })
vim.keymap.set("n", "<leader>tc", "<CMD>tabclose<CR>", { desc = "Close current tab", unpack(opts) })
vim.keymap.set("n", "<leader>tn", "<CMD>tabn<CR>", { desc = "Switch to next tab", unpack(opts) })
vim.keymap.set("n", "<leader>tp", "<CMD>tabp<CR>", { desc = "Switch to previous tab", unpack(opts) })

--Buffer Navigation
vim.keymap.set("n", "<Tab>", "<CMD>bnext<CR>", { desc = "Next buffer", unpack(opts) })
vim.keymap.set("n", "<S-Tab>", "<CMD>bprevious<CR>", { desc = "Previous buffer", unpack(opts) })
vim.keymap.set("n", "<leader>x", "<CMD>bdelete!<CR>", { desc = "Delete buffer", unpack(opts) })
vim.keymap.set("n", "<leader>b", "<CMD>enew<CR>", { desc = "New buffer", unpack(opts) })

-- Window Management
vim.keymap.set("n", "<leader>sv", "<CMD>vsplit<CR>", { desc = "[S]plit [V]ertical", unpack(opts) })
vim.keymap.set("n", "<leader>sh", "<CMD>split<CR>", { desc = "[S]plit [H]orizontal", unpack(opts) })
vim.keymap.set("n", "<leader>o", "<CMD>only<CR>", { desc = "Close other windows", unpack(opts) })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Equalize window sizes", unpack(opts) })

-- Navigating between windows
vim.keymap.set({ "n" }, "<leader>h", "<C-w>h", { desc = "Navigate to the window on the left", unpack(opts) })
vim.keymap.set({ "n" }, "<leader>j", "<C-w>j", { desc = "Navigate to the window below", unpack(opts) })
vim.keymap.set({ "n" }, "<leader>k", "<C-w>k", { desc = "Navigate to the window above", unpack(opts) })
vim.keymap.set({ "n" }, "<leader>l", "<C-w>l", { desc = "Navigate to the window on the right", unpack(opts) })

-- Toggle line wrapping
vim.keymap.set("n", "<leader>lw", "<CMD>set wrap!<CR>", { desc = "Toggle line wrapping", unpack(opts) })

-- Stay in visual mode after shifting
vim.keymap.set("x", "<", "<gv", { desc = "Stay in visual mode after shifting", unpack(opts) })
vim.keymap.set("x", ">", ">gv", { desc = "Stay in visual mode after shifting", unpack(opts) })

-- Diagnostic navigation
vim.keymap.set("n", "g[", function()
	vim.diagnostic.jump({ count = 1, float = true })
end, { desc = "[G]o to previous diagnostic", unpack(opts) })
vim.keymap.set("n", "g]", function()
	vim.diagnostic.jump({ count = -1, float = true })
end, { desc = "[G]o to next diagnostic", unpack(opts) })
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Open diagnostics", unpack(opts) })

-- Split resizing
vim.keymap.set("n", "<Right>", "<CMD>vertical resize +2<CR>", { desc = "Increase vertical split size", unpack(opts) })
vim.keymap.set("n", "<Left>", "<CMD>vertical resize -2<CR>", { desc = "Decrease vertical split size", unpack(opts) })
vim.keymap.set("n", "<Up>", "<CMD>resize +2<CR>", { desc = "Increase horizontal split size", unpack(opts) })
vim.keymap.set("n", "<Down>", "<CMD>resize -2<CR>", { desc = "Decrease horizontal split size", unpack(opts) })

-- LSP
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "[G]o to [D]efinition", silent = true })
vim.keymap.set("n", "gD", vim.lsp.buf.type_definition, { desc = "[G]o to type [D]efinition", silent = true })
vim.keymap.set("n", "gI", vim.lsp.buf.implementation, { desc = "[G]o to [I]mplementation", silent = true })
vim.keymap.set("n", "ga", vim.lsp.buf.code_action, { desc = "Code [A]ction", silent = true })
-- vim.keymap.set("n", "gr", vim.lsp.buf.references, { silent = true })
-- vim.keymap.set("n", "[g", vim.diagnostic.goto_prev, { silent = true })
-- vim.keymap.set("n", "]g", vim.diagnostic.goto_next, { silent = true })
vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, { desc = "Rename", silent = true })
-- vim.keymap.set("n", "<leader>e", function () vim.diagnostic.open_float(nil, floating_options) end, { silent = true })
-- vim.keymap.set("n", "K", function () vim.lsp.buf.hover(floating_options) end, { silent = true })
vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, { desc = "Signature Help", silent = true }) -- changed to Ctrl+k to avoid conflict with window navigation

-- change working directory to the location of the current file
vim.keymap.set(
	"n",
	"<leader>cd",
	":cd %:p:h<CR>:pwd<CR>",
	{ desc = "Change working directory to the location of the current file", unpack(opts) }
)

vim.keymap.set("n", "<A-j>", "<CMD>m .+1<CR>==", { desc = "Move line down", unpack(opts) }) -- Move line down
vim.keymap.set("n", "<A-k>", "<CMD>m .-2<CR>==", { desc = "Move line up", unpack(opts) }) -- Move line up
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down", unpack(opts) }) -- Move selection down
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up", unpack(opts) }) -- Move selection up

vim.keymap.set("t", "<C-wC>", "<C-\\><C-n><cmd>q<cr>", { desc = "Exit terminae", unpack(opts) })
vim.keymap.set("t", "<ESC>", "<cmd>x<cr>", { desc = "Exit terminal mode", unpack(opts) })

vim.keymap.set("n", "<leader>lu", "<CMD>Lazy update<CR>", { desc = "[l]azy [u]pdate", unpack(opts) })
vim.keymap.set("n", "<leader>ll", "<CMD>Lazy<CR>", { desc = "[l]azy", unpack(opts) })
vim.keymap.set("n", "<leader>lm", "<CMD>Mason<CR>", { desc = "[m]ason", unpack(opts) })

-- Text objects via nvim-treesitter-textobjects
-- See: https://github.com/nvim-treesitter/nvim-treesitter-textobjects/tree/main
vim.keymap.set({ "x", "o" }, "af", function()
	require("nvim-treesitter-textobjects.select").select_textobject("@function.outer", "textobjects")
end, { desc = "around [f]unction", unpack(opts) })
vim.keymap.set({ "x", "o" }, "if", function()
	require("nvim-treesitter-textobjects.select").select_textobject("@function.inner", "textobjects")
end, { desc = "inside [f]unction", unpack(opts) })
vim.keymap.set({ "x", "o" }, "ac", function()
	require("nvim-treesitter-textobjects.select").select_textobject("@class.outer", "textobjects")
end, { desc = "around [c]lass", unpack(opts) })
vim.keymap.set({ "x", "o" }, "ic", function()
	require("nvim-treesitter-textobjects.select").select_textobject("@class.inner", "textobjects")
end, { desc = "inside [c]lass", unpack(opts) })

vim.keymap.set({ "n", "x", "o" }, "]f", function()
	require("nvim-treesitter-textobjects.move").goto_next_start("@function.outer", "textobjects")
end, { desc = "Next [f]unction start", unpack(opts) })
vim.keymap.set({ "n", "x", "o" }, "]c", function()
	require("nvim-treesitter-textobjects.move").goto_next_start("@class.outer", "textobjects")
end, { desc = "Next [c]lass start", unpack(opts) })
-- You can also pass a list to group multiple queries.
vim.keymap.set({ "n", "x", "o" }, "]o", function()
	require("nvim-treesitter-textobjects.move").goto_next_start({ "@loop.inner", "@loop.outer" }, "textobjects")
end, { desc = "Next l[o]op start", unpack(opts) })
-- You can also use captures from other query groups like `locals.scm` or `folds.scm`
vim.keymap.set({ "n", "x", "o" }, "]s", function()
	require("nvim-treesitter-textobjects.move").goto_next_start("@local.scope", "locals")
end, { desc = "Next [s]cope start", unpack(opts) })
vim.keymap.set({ "n", "x", "o" }, "]F", function()
	require("nvim-treesitter-textobjects.move").goto_next_end("@function.outer", "textobjects")
end, { desc = "Next [F]unction end", unpack(opts) })
vim.keymap.set({ "n", "x", "o" }, "]C", function()
	require("nvim-treesitter-textobjects.move").goto_next_end("@class.outer", "textobjects")
end, { desc = "Next [C]lass end", unpack(opts) })

vim.keymap.set({ "n", "x", "o" }, "[f", function()
	require("nvim-treesitter-textobjects.move").goto_previous_start("@function.outer", "textobjects")
end, { desc = "Previous [f]unction start", unpack(opts) })
vim.keymap.set({ "n", "x", "o" }, "[c", function()
	require("nvim-treesitter-textobjects.move").goto_previous_start("@class.outer", "textobjects")
end, { desc = "Previous [c]lass start", unpack(opts) })

vim.keymap.set({ "n", "x", "o" }, "[F", function()
	require("nvim-treesitter-textobjects.move").goto_previous_end("@function.outer", "textobjects")
end, { desc = "Previous [F]unction end", unpack(opts) })
vim.keymap.set({ "n", "x", "o" }, "[C", function()
	require("nvim-treesitter-textobjects.move").goto_previous_end("@class.outer", "textobjects")
end, { desc = "Previous [C]lass end", unpack(opts) })

-- Go to either the start or the end, whichever is closer.
-- Use if you want more granular movements
vim.keymap.set({ "n", "x", "o" }, "]d", function()
	require("nvim-treesitter-textobjects.move").goto_next("@conditional.outer", "textobjects")
end, { desc = "Next [d]ecision/conditional", unpack(opts) })
vim.keymap.set({ "n", "x", "o" }, "[d", function()
	require("nvim-treesitter-textobjects.move").goto_previous("@conditional.outer", "textobjects")
end, { desc = "Previous [d]ecision/conditional", unpack(opts) })

local ts_repeat_move = require("nvim-treesitter-textobjects.repeatable_move")

-- Repeat movement with ; and ,
-- ensure ; goes forward and , goes backward regardless of the last direction
vim.keymap.set({ "n", "x", "o" }, ";", ts_repeat_move.repeat_last_move_next, { desc = "Repeat last move forward" })
vim.keymap.set({ "n", "x", "o" }, ",", ts_repeat_move.repeat_last_move_previous, { desc = "Repeat last move backward" })
