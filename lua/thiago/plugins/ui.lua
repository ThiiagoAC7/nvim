return {
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			lsp = {
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
					["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
				},
			},

			presets = {
				long_message_to_split = true, -- long messages will be sent to a split
				lsp_doc_border = true, -- add a border to hover docs and signature help
			},
		},
		dependencies = {
			"MunifTanjim/nui.nvim",
		},
		keys = {
			{
				"<leader>sm",
				function()
					vim.cmd("Noice")
				end,
				desc = "[S]how [M]essages",
			},
		},
	},

	{
		"rcarriga/nvim-notify",
		keys = {
			{
				"<leader>un",
				function()
					require("notify").dismiss({ silent = true, pending = true })
				end,
				desc = "Dismiss All Notifications",
			},
		},
		opts = {
			stages = "static",
			timeout = 1000,
			render = "compact",
			max_width = function()
				return math.floor(vim.o.columns * 0.3)
			end,
			on_open = function(win)
				vim.api.nvim_win_set_config(win, { zindex = 100 })
			end,
		},
	},

	{
		"j-hui/fidget.nvim",
		opts = {},
	},
}
