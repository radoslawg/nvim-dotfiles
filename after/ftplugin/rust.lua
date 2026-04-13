local bufnr = vim.api.nvim_get_current_buf()
vim.keymap.set("n", "<leader>ca", function()
  vim.cmd.RustLsp("codeAction") -- supports rust-analyzer's grouping
  -- or vim.lsp.buf.codeAction() if you don't want grouping.
end, { desc = "code [a]ction", silent = true, buffer = bufnr })
vim.keymap.set("n", "<leader>cE", function()
  vim.cmd.RustLsp("explainError")
end, { desc = "[E]xplain error(cycle)", silent = true, buffer = bufnr })
vim.keymap.set("n", "<leader>cT", function()
  vim.cmd.RustLsp("testables")
end, { desc = "run [T]ests", silent = true, buffer = bufnr })
vim.keymap.set("n", "<leader>cD", function()
  vim.cmd.RustLsp("openDocs")
end, { desc = "open [D]ocs.rs", silent = true, buffer = bufnr })
vim.keymap.set("n", "<leader>cC", function()
  vim.cmd.RustLsp("openCargo")
end, { desc = "open [C]argo", silent = true, buffer = bufnr })

vim.keymap.set("n", "<leader>cR", ":Crun<CR>", { desc = "cargo [R]un", silent = true, buffer = bufnr })
vim.keymap.set(
  "n",
  "K", -- Override Neovim's built-in hover keymap with rustaceanvim's hover actions
  function()
    vim.cmd.RustLsp({ "hover", "actions" })
  end,
  { desc = "Hover Action", silent = true, buffer = bufnr }
)

vim.opt_local.colorcolumn = "100"
