return {
  "mfussenegger/nvim-lint",
  config = function()
    local lint = require("lint")
    lint.linters_by_ft = {
      markdown = { "vale" },
      lua = { "luacheck" },
      haskell = { "hlint" },
      python = { "flake8" },
      javascript = { "eslint" },
      typescript = { "eslint" },
      go = { "golangci-lint" },
      rust = { "cargo" },
    }

    lint.linters.luacheck.args = {
      "--globals",
      "love",
      "vim",
      "--formatter",
      "plain",
      "--codes",
      "--ranges",
      "-",
    }

    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      callback = function()
        lint.try_lint()
      end,
    })
  end,
}
