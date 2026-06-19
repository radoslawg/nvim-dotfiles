-- General LSP diagnostic configuration and UI customization.
-- This file configures how diagnostics are displayed (signs, virtual lines, etc.)
-- and sets up global options for floating windows used by LSP.

vim.diagnostic.config({
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = " ",
      [vim.diagnostic.severity.WARN] = " ",
      [vim.diagnostic.severity.HINT] = " ",
      [vim.diagnostic.severity.INFO] = " ",
    },
  },
  virtual_lines = false,
  virtual_text = true,
  underline = true,               -- Enable underline for diagnostics
  update_in_insert = false,       -- Update diagnostics in insert mode
  severity_sort = true,           -- sort diagnostics by severity
  jump = { float = true },
  float = { 
    source = 'if_many',
    border = 'rounded', 
    focusable = false
  }, -- Show source in floating diagnostics if there are multiple sources 
})

_G.floating_options = {
  focusable = false,
  focus = false,
  max_height = 50,
  max_width = 180,
  border = "rounded",
}
