require("blink.cmp").setup({
    keymap = {
      preset = "enter",
    },

    appearance = {
      nerd_font_variant = "mono",
    },

    completion = {
      documentation = { auto_show = true, auto_show_delay_ms = 1000 },
    },

    sources = {
      default = { "copilot", "lazydev", "lsp", "path", "snippets", "buffer" },
      providers = {
        lazydev = {
          name = "LazyDev",
          module = "lazydev.integrations.blink",
          score_offset = 101,
        },
        copilot = {
          name = "copilot",
          module = "blink-copilot",
          score_offset = 100,
          async = true,
        },
      },
    },

    snippets = { preset = "luasnip" },

    fuzzy = { implementation = "prefer_rust_with_warning" },

    signature = { enabled = true },
  }
)
