-- General LSP diagnostic configuration and UI customization.
-- This file configures how diagnostics are displayed (signs, virtual lines, etc.)
-- and sets up global options for floating windows used by LSP.

vim.diagnostic.config({
  -- virtual_lines = {
  --   current_line_only = true, -- Enable virtual lines only for the current line
  -- },
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = " ",
      [vim.diagnostic.severity.WARN] = " ",
      [vim.diagnostic.severity.HINT] = " ",
      [vim.diagnostic.severity.INFO] = " ",
    },
  },
  --  virtual_lines = true,
  virtual_text = true,
  underline = false,
  -- Enable underline for diagnostics
  update_in_insert = false, -- Update diagnostics in insert mode
  severity_sort = true,     -- sort diagnostics by severity
})

_G.floating_options = {
  focusable = true,
  focus = false,
  max_height = 50,
  max_width = 150,
}
