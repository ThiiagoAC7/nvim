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
			},
		},
		init = function()
			vim.cmd.colorscheme("tokyonight")
		end,
	},
}
