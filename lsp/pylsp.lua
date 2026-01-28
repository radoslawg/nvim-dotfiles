-- Specific configuration for the pylsp (Python) language server.
-- This file configures Python-specific plugins like flake8, pylint, and pycodestyle
-- to manage linting and code style rules.

return {
  settings = {
    pylsp = {
      plugins = {
        autopep8 = { enabled = false },
        pyflakes = { enabled = true },
        pylint = { enabled = true },
        flake8 = {
          enabled = true,
          maxLineLength = 180,
        },
        pycodestyle = {
          ignore = { "W391" },
          maxLineLength = 180,
        },
      },
    },
  },
}