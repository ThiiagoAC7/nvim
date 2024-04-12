return {
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			local lualine = require("lualine")

			lualine.setup({})
		end,
	},

	{
		"akinsho/nvim-bufferline.lua",
		config = function()
			local buff = require("bufferline")

			buff.setup({
				options = {
					themable = true,
					mode = "tabs",
					indicator = {
						icon = "▎",
						style = "icon",
					},
					diagnostics = "nvim_lsp",
					separator_style = "thin",
				},
			})

			-- go to next/prev buffer
			vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", {})
			vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", {})
		end,
	},
}
