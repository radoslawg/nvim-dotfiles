vim.pack.add({ "https://github.com/folke/which-key.nvim" })

require("which-key").setup({
  preset = "helix",
  show_help = false,
  show_keys = true,
  triggers = {
    { "<auto>", mode = "nixsotc" },
    { "t",      mode = { "n", "v" } },
  }
}
)
