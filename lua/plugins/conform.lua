-- Powerful formatting plugin for Neovim that provides a consistent interface
-- for running various external formatters (like stylua, goimports, black, prettier).
-- It supports asynchronous formatting, format-on-save, and per-language configuration.
return {
  "stevearc/conform.nvim",
  keys = {
    {
      "<leader>f",
      function()
        require("conform").format({ async = true, lsp_format = "fallback" })
      end,
      mode = "",
      desc = "[f]ormat buffer",
    },
  },
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
    },
    formatters_by_ft = {
      lua = { "stylua" },
      go = { "goimports" },
      python = { "black" },
      rust = { "rustfmt", lsp_format = "fallback" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      html = { "prettier" },
      css = { "prettier" },
      toml = { "tombi" },
      csharp = { "csharpier" },
      ["_"] = { "trim_whitespace" },
    },
    format_on_save = {
      -- These options will be passed to conform.format()
      timeout_ms = 500,
      lsp_format = "fallback",
    },
  },
}
