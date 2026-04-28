vim.pack.add({ "https://github.com/nmac427/guess-indent.nvim" })
require("guess-indent").setup({
  -- Filetype specific overrides. See the project's README for details.
  filetype_overrides = {
    -- For example, to use tabs with Go files:
    -- go = {
    --   indent_style = "tab",
    --   indent_size = 4,
    -- },
  },
})
