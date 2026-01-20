vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = true,
  severity_sort = false,
})

_G.floating_options = {
  focusable = true,
  focus = false,
  max_height = 50,
  max_width = 150,
}

vim.api.nvim_create_autocmd({ "BufWritePre", nil }, {
  callback = function()
    if vim.lsp.buf_is_attached() then
      vim.lsp.buf.format()
    end
  end,
})

vim.lsp.enable("csharp_ls")
vim.lsp.enable("rust_analyzer")
vim.lsp.enable("gopls")
vim.lsp.enable("lua_ls")
vim.lsp.config("lua_ls", {
  settings = {
    root_markers = {
      ".luarc.json",
      ".luarc.jsonc",
      ".luacheckrc",
      ".stylua.toml",
      "stylua.toml",
      "selene.toml",
      "selene.yml",
      ".git",
    },
    Lua = {
      diagnostics = {
        globals = { "vim", "require" },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
      },
    },
  },
})
