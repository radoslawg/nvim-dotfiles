-- 1. Define the autocommand to handle keybindings
-- We create a group to prevent duplicating the autocmd if you reload the file
local augroup = vim.api.nvim_create_augroup("RustAnalyzerKeys", { clear = true })

vim.api.nvim_create_autocmd("LspAttach", {
  group = augroup,
  callback = function(args)
    -- Get the client that just attached to the buffer
    local client = vim.lsp.get_client_by_id(args.data.client_id)

    -- Ensure we only apply these mappings when 'rust_analyzer' is the one attaching
    if client and client.name == "rust_analyzer" then
      -- Set the keymap only for the current buffer
      vim.keymap.set("n", "<leader>cr", "<cmd>wall<CR><cmd>Crun<CR>", {
        buffer = args.buf,
        desc = "Cargo [r]un",
      })
    end
    vim.keymap.set("n", "<leader>cD", "<cmd>Cdoc --open<CR>", {
      buffer = args.buf,
      desc = "Cargo open [D]ocs",
    })
    vim.keymap.set("n", "<leader>cb", "<cmd>Cbuild<CR>", {
      buffer = args.buf,
      desc = "Cargo [b]uild",
    })
    vim.keymap.set("n", "<leader>cR", "<cmd>LspCargoReload<CR>", {
      buffer = args.buf,
      desc = "[R]eload Workspace",
    })
  end,
})
