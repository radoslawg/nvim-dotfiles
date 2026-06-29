vim.pack.add({
  "https://github.com/Rics-Dev/project-explorer.nvim",
  "https://github.com/nvim-telescope/telescope.nvim",
})

require("project_explorer").setup({
  paths = { "d:\\Projekty\\rust\\" },
  command_pattern = "fd . %s -td --min-depth %d --max-depth %d",
  newProjectPath = "d:/Projekty",
  file_explorer = function(dir) --custom file explorer set by user
    vim.cmd("Yazi")
    -- vim.cmd("Yazi cwd " .. dir)
  end,
})
