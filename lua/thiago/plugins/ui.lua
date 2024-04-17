return {
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {},
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
