vim.diagnostic.config({
	virtual_lines = {
		current_line_only = true, -- Enable virtual lines only for the current line
	},
	--virtual_text = true,
	signs = true, --
	nderline = true,
	-- Enable underline for diagnostics
	update_in_insert = true, -- Update diagnostics in insert mode
	severity_sort = false, -- Do not sort diagnostics by severity
})

_G.floating_options = {
	focusable = true,
	focus = false,
	max_height = 50,
	max_width = 150,
}

vim.lsp.config("pylsp", {
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
})

vim.lsp.config("lua_ls", {
	settings = {
		root_markers = {
			".luarc.json",
			".luarc.jsonc",
			".luacheckrc",
			".stylua.toml",
			"stylua.toml",
			"selene.toml",
			"selene.yml",
			".git",
		},
		Lua = {
			diagnostics = {
				globals = { "vim", "require" },
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
			},
		},
	},
})
