return {
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			local lualine = require("lualine")
			lualine.setup({
				options = {
					component_separators = "",
					section_separators = "",
				},
				sections = {
					lualine_a = {
						{
							"mode",
							fmt = function(str)
								return str:sub(1, 1)
							end,
						},
					},
					lualine_x = { "encoding", "fileformat" },
					lualine_y = { "" },
					lualine_z = { "location" },
				},
			})
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
					numbers = function(opts)
						---@diagnostic disable-next-line: undefined-field
						return string.format("[%s]", opts.ordinal)
					end,
					style_preset = {
						buff.style_preset.no_italic,
					},
					indicator = {
						separator_style = "▎",
						style = "icon",
					},
					separator_style = "thin",
					modified_icon = "*",
					diagnostics = "nvim_lsp",
					color_icons = false,
					show_buffer_icons = false,
					show_buffer_close_icons = false,
					show_close_icon = false,
				},
			})

			-- go to next/prev buffer
			vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", {})
			vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", {})
		end,
	},

	{ -- Add indentation guides even on blank lines
		"lukas-reineke/indent-blankline.nvim",
		-- Enable `lukas-reineke/indent-blankline.nvim`
		-- See `:help ibl`
		main = "ibl",
		opts = {
			indent = {
				char = "│",
				tab_char = "│",
			},
			scope = { enabled = false },
			exclude = {
				filetypes = { "help", "terminal", "lspinfo", "TelescopePrompt", "TelescopeResults" },
				buftypes = { "terminal" },
			},
		},
	},
}
