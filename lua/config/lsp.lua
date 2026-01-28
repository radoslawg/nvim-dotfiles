-- General LSP diagnostic configuration and UI customization.
-- This file configures how diagnostics are displayed (signs, virtual lines, etc.)
-- and sets up global options for floating windows used by LSP.

vim.diagnostic.config({
  virtual_lines = {
    current_line_only = true, -- Enable virtual lines only for the current line
  },
  --virtual_text = true,
  signs = true, --
  nderline = true,
  -- Enable underline for diagnostics
  update_in_insert = true, -- Update diagnostics in insert mode
  severity_sort = false, -- Do not sort diagnostics by severity
})

_G.floating_options = {
  focusable = true,
  focus = false,
  max_height = 50,
  max_width = 150,
}
