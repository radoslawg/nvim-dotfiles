return { "folke/which-key.nvim", opts={}, lazy=false, keys = {
	{
		"<leader>?",
		function()
			require("which-key").show({ global = false })
		end,
		desc = "Buffer Local Keymaps (which-key)",
	},
}, }
