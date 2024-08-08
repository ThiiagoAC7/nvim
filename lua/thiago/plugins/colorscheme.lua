return {
	{
		"rebelot/kanagawa.nvim",
		priority = 1000,
		config = function()
			local kanagawa = require("kanagawa")

			kanagawa.setup({
				commentStyle = { italic = false },
				keywordStyle = { italic = false },
				functionStyle = { italic = false },
				typeStyle = { italic = false },
				transparent = true,

				overrides = function(colors)
					local theme = colors.theme
					return {
						Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 },
						PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
						PmenuSbar = { bg = theme.ui.bg_m1 },
						PmenuThumb = { bg = theme.ui.bg_p2 },
					}
				end,
			})
		end,
		-- init = function()
		--     vim.cmd.colorscheme("kanagawa-dragon")
		-- end,
	},

	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = true,
		opts = {
			italic = {
				strings = false,
				emphasis = false,
				comments = false,
				folds = false,
			},
			inverse = false,
			contrast = "hard",
			transparent_mode = true,
		},
		-- init = function()
		--     vim.cmd.colorscheme("gruvbox")
		-- end,
	},

	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			style = "night",
			transparent = true,
			styles = {
				comments = { italic = false },
				keywords = { italic = false },
				sidebars = "transparent",
				floats = "transparent",
			},
		},
		init = function()
			vim.cmd.colorscheme("tokyonight")
		end,
	},
}
