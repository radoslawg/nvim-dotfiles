-- A plugin to manage external editor tooling like LSPs, DAPs, linters, and formatters.
return {
  "mason-org/mason.nvim",
  opts = {
    registries = {
      "github:mason-org/mason-registry",
      "github:crashdummyy/mason-registry",
    },
    ensure_installed = {
      "lua-language-server",
      "xmlformatter",
      "stylua",
      "bicep-lsp",
      "html-lsp",
      "css-lsp",
      "eslint-lsp",
      "typescript-language-server",
      "csharpier",
      "prettier",
      "json-lsp",
      "yaml-language-server",
      "markdown-oxide",
      "black",
      "goimports",
      "gopls",

      -- for some reason those have to be installed explicitely with MasonInstall
      "roslyn",
      "netcoredbg",
    },
  },
}
