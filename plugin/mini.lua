-- Mini
vim.pack.add({
  "https://github.com/nvim-mini/mini.ai",
  "https://github.com/nvim-mini/mini.comment",
  "https://github.com/nvim-mini/mini.surround",
  "https://github.com/nvim-mini/mini.pairs",
  "https://github.com/nvim-mini/mini.align",
})

require("mini.ai").setup()
require("mini.surround").setup()
require("mini.pairs").setup()
require("mini.align").setup()
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
