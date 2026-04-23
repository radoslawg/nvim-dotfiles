-- https://echasnovski.com/blog/2026-03-13-a-guide-to-vim-pack
require("config.options")
require("config.lsp")

-- Helpers
vim.pack.add({ "https://github.com/nvim-lua/plenary.nvim" })
vim.pack.add({ "https://github.com/nvim-tree/nvim-web-devicons" })
vim.cmd.packadd("nvim.difftool")
vim.cmd.packadd("nvim.undotree")
--
-- Colorscheme
vim.pack.add({ "https://github.com/rose-pine/neovim" })

-- Provides a status line component that shows the progress of LSP actions.
vim.pack.add({ "https://github.com/j-hui/fidget.nvim", })
require("fidget").setup({})
-- Yazi
vim.pack.add({ "https://github.com/mikavilpas/yazi.nvim" })

-- Lazy Dev
vim.pack.add({ "https://github.com/folke/lazydev.nvim" })

-- Blink
vim.pack.add({
  { src = "https://github.com/saghen/blink.cmp", version = vim.version.range("1.*") },
  "https://github.com/fang2hou/blink-copilot",
  "https://github.com/L3MON4D3/LuaSnip",
  "https://github.com/rafamadriz/friendly-snippets",
})

-- Conform
vim.pack.add({ "https://github.com/stevearc/conform.nvim" })

-- Mini
vim.pack.add({
  "https://github.com/nvim-mini/mini.ai",
  "https://github.com/nvim-mini/mini.comment",
  "https://github.com/nvim-mini/mini.surround",
  "https://github.com/nvim-mini/mini.pairs",
})
require("mini.ai").setup()
require("mini.surround").setup()
require("mini.pairs").setup()
require("mini.comment").setup({
  -- Module mappings. Use `''` (empty string) to disable one.
  mappings = {
    -- Toggle comment (like `gcip` - comment inner paragraph) for both
    -- Normal and Visual modes
    comment = "<leader>cc",

    -- Toggle comment on current line
    comment_line = "<leader>cl",

    -- Toggle comment on visual selection
    comment_visual = "<leader>cc",

    -- Define 'comment' textobject (like `dgc` - delete whole comment block)
    -- Works also in Visual mode if mapping differs from `comment_visual`
    textobject = "<leader>co",
  },
})


require("config.keymaps")
