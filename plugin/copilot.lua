-- GitHub Copilot integration for Neovim.
-- This plugin uses the official GitHub Copilot Language Server to provide AI-powered
-- code completions and suggestions directly within the editor.
-- It can significantly speed up coding by predicting the next lines of code.
vim.pack.add({ "https://github.com/zbirenbaum/copilot.lua", "https://github.com/copilotlsp-nvim/copilot-lsp" })
require("copilot").setup({
  suggestion = { enabled = false },
  panel = { enabled = false },
  filetypes = {
    markdown = true,
    help = true,
  },

})
