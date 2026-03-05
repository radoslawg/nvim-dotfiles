return {
  "rachartier/tiny-inline-diagnostic.nvim",
  event = "VeryLazy", -- Or `LspAttach`
  priority = 1000, -- needs to be loaded in first
  opts = {
    signs = {
      left = "",
      right = "",
      diag = "●",
      arrow = "    ",
      up_arrow = "    ",
      vertical = " │",
      vertical_end = " └",
    },
    blend = {
      factor = 0.22,
    },
    options = {
      multilines = {
        enabled = true,
      },
      show_source = {
        enabled = true,
      },
    },
  },
}
