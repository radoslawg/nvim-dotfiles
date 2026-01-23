-- Provides a way to format code in Neovim, with support for various formatters and languages.
return {
  "stevearc/conform.nvim",
  opts = {
    formatters = {
      stylua = {
        command = "stylua",
        prepend_args = {
          "--indent-type",
          "Spaces",
          "--indent-width",
          "2",
        },
      },
      fourmolu = {
        prepend_args = {
          "--indentation",
          "2",
        },
      },
    },
    formatters_by_ft = {
      lua = { "stylua" },
      go = { "goimports", "gofmt" },
      haskell = { "fourmolu", "stylish-haskell" },
      python = { "black" },
      rust = { "rustfmt", lsp_format = "fallback" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      html = { "prettier" },
      css = { "prettier" },
      ["_"] = { "trim_whitespace" },
    },
    format_on_save = {
      -- These options will be passed to conform.format()
      timeout_ms = 500,
      lsp_format = "fallback",
    },
  },
}
