vim.pack.add({
  "https://github.com/mason-org/mason.nvim",
  "https://github.com/mason-org/mason-lspconfig.nvim",
  "https://github.com/neovim/nvim-lspconfig",
})

require("mason").setup({
  registries = {
    "github:mason-org/mason-registry",
    "github:crashdummyy/mason-registry",
  },
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
})

require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "rust_analyzer",
    "html",
    "cssls",
    "eslint",
    "astro",
    "bashls",
    "ts_ls",
    "csharp_ls",
    "yamlls",
    "markdown_oxide",
    "pylsp",
    "gopls",

    -- for some reason those have to be installed explicitely with MasonInstall
    --    "roslyn",
    --    "netcoredbg",
  },
})
