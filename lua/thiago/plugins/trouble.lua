return {
	"folke/trouble.nvim",
	opts = {},
	cmd = "Trouble",
	keys = {
		{
			"<leader>t",
			"<cmd>Trouble diagnostics toggle filter.buf=0<cr>", -- only for current buffer
			desc = "Diagnostics (Trouble)",
		},
		{
			"<leader>T",
			"<cmd>Trouble diagnostics toggle<cr>", -- for all buffers in current proj
			desc = "Diagnostics (Trouble)",
		},
	},
}
