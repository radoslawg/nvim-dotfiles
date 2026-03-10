return {
  "mfussenegger/nvim-dap",
  config = function()
    local dap = require("dap")
    vim.fn.sign_define("DapBreakpoint", { text = "🔴", texthl = "DiagnosticSignError", linehl = "", numhl = "" })
    dap.adapters.cppdbg = {
      id = "cppdbg",
      type = "executable",
      -- c:\Users\Administrator\AppData\Local\nvim-data\mason\bin\OpenDebugAD7.cmd
      command = "OpenDebugAD7.cmd",
      options = {
        detached = false,
      },
    }

    dap.configurations.cpp = {
      {
        name = "Launch file",
        type = "cppdbg",
        request = "launch",
        program = function()
          return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
        end,
        cwd = "${workspaceFolder}",
        stopAtEntry = true,
      },
      {
        name = "Attach to gdbserver :1234",
        type = "cppdbg",
        request = "launch",
        MIMode = "gdb",
        miDebuggerServerAddress = "localhost:1234",
        miDebuggerPath = "/usr/bin/gdb",
        cwd = "${workspaceFolder}",
        program = function()
          return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
        end,
      },
    }
    dap.configurations.rust = dap.configurations.c
    dap.configurations.rust = dap.configurations.cpp
  end,
}
