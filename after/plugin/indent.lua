require("indent_blankline").setup({
	char = "▏",
	char_blankline = " ",
	filetype_exclude = { "help", "terminal", "lspinfo", "TelescopePrompt", "TelescopeResults" },
	buftype_exclude = { "terminal" },
	show_first_indent_level = false,
})
