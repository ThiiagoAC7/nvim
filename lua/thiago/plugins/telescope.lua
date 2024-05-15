return {
	"nvim-telescope/telescope.nvim",
	event = "VimEnter",
	branch = "0.1.x",
	dependencies = {
		{ "nvim-telescope/telescope-ui-select.nvim" },
		{ "nvim-tree/nvim-web-devicons" },
		{ "nvim-lua/plenary.nvim" },
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		local picker_theme = {
			theme = "dropdown",
			-- previewer = false,
			mappings = {
				i = {
					["<CR>"] = "select_default",
				},
			},
		}

		telescope.setup({
			defaults = {
				mappings = {
					i = {},
					n = {
						["q"] = actions.close,
						["vs"] = actions.select_vertical,
						["hs"] = actions.select_horizontal,
					},
				},
			},
			extensions = {},
			pickers = {
				treesitter = picker_theme,
				lsp_document_symbols = picker_theme,
				lsp_dynamic_workspace_symbols = picker_theme,
			},
		})

		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
		vim.keymap.set("n", "<leader>fs", builtin.treesitter, { desc = "[F]ind Treersitter [S]ymbols" })
		vim.keymap.set("n", "<leader>gc", builtin.git_commits, { desc = "[G]it [C]ommits" })
		vim.keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "[F]ind [K]eymaps" })
	end,
}
