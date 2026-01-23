-- Provides Copilot integration for nvim-cmp.
return {
  "zbirenbaum/copilot-cmp",
  config = function()
    require("copilot_cmp").setup()
  end,
  dependencies = {
    "zbirenbaum/copilot.lua",
  },
}
