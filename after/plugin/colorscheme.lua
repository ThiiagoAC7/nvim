-- color scheme config

-- require("tokyonight").setup({
-- 	style = "night",
-- 	terminal_colors = true,
-- 	styles = {
-- 		comments = { italic = true },
-- 		keywords = { italic = true },
-- 	},
-- })

require("catppuccin").setup({
	flavour = "mocha", -- latte, frappe, macchiato, mocha
	term_colors = true,
	no_italic = true, -- Force no italic
	no_bold = false, -- Force no bold
	styles = {
		comments = {},
		conditionals = {},
		loops = {},
		functions = {},
		keywords = {},
		strings = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = {},
		types = {},
		operators = {},
	},
	color_overrides = {
		mocha = {
			base = "#181824",
		},
	},
	custom_highlights = {},
	integrations = {
		cmp = true,
		gitsigns = true,
		telescope = true,
		lsp_trouble = true,
		mason = true,
		treesitter = true,
	},
})

vim.g.gruvbox_baby_background_color = "dark"
vim.g.gruvbox_baby_telescope_theme = true

vim.cmd.colorscheme("gruvbox-baby")
