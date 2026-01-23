-- A Neovim plugin that provides a floating terminal window.

return  {'akinsho/toggleterm.nvim', version = "*", opts = {
--[[ things you want to change go here]]
},
keys = {
        { "<leader>tt", "<cmd>ToggleTerm direction=float name=Terminal<cr>", desc = "[T]oggle [T]erminal" },
    },
 }
