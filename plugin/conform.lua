require("conform").setup( 
{
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
      rust = { "rustfmt", lsp_format = "prefer" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      html = { "prettier" },
      css = { "prettier" },
      toml = { "tombi" },
      cs = { lsp_format = "prefer" },
      json = { "jq" },
      ["_"] = { "trim_whitespace" },
    },
    format_on_save = {
      -- These options will be passed to conform.format()
      timeout_ms = 500,
      lsp_format = "fallback",
    },
  }
)
