require("ibl").setup({
	indent = {
		char = "▏",
		tab_char = "│",
	},
    scope = { enabled = false },
	exclude = {
		filetypes = { "help", "terminal", "lspinfo", "TelescopePrompt", "TelescopeResults" },
		buftypes = { "terminal" },
	},
})
