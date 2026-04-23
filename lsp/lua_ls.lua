-- Specific configuration for the lua_ls (Lua) language server.
-- This file configures workspace settings, library paths, and diagnostic globals
-- to provide better autocompletion and diagnostics for Neovim development and general Lua projects.

return {
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
  },
}
