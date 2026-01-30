vim.api.nvim_create_autocmd("User", {
  pattern = "VeryLazy",
  callback = function()
    local checker = require("lazy.manage.checker")
    checker.check()
    local status = require("lazy.status")
    if status.has_updates then
      --      vim.api.nvim_echo({ { "Status.has_updates" } }, true, {})
      local lazy = require("lazy")
      lazy.sync({ show = false }) -- Sync plugins without showing the UI
    end
  end,
})
