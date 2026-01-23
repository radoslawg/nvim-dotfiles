-- Provides a pop-up window that shows available keybindings.
return {
	"folke/which-key.nvim",
	opts = {
		triggers = {
			{ "<auto>", mode = "nixsotc" },
			{ "t",      mode = { "n", "v" } },
		}
	},
	lazy = false,
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
}
