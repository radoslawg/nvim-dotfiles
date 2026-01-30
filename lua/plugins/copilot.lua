-- GitHub Copilot integration for Neovim.
-- This plugin uses the official GitHub Copilot Language Server to provide AI-powered
-- code completions and suggestions directly within the editor.
-- It can significantly speed up coding by predicting the next lines of code.
return {
  "zbirenbaum/copilot.lua",
  dependencies = {
    "copilotlsp-nvim/copilot-lsp", -- (optional) for NES functionality
  },
  cmd = "Copilot",
  event = "InsertEnter",
  opts = {},
}
