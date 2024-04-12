return {
	"nvim-telescope/telescope.nvim",
	event = "VimEnter",
	branch = "0.1.x",
	dependencies = {
		{ "nvim-telescope/telescope-ui-select.nvim" },
		{ "nvim-tree/nvim-web-devicons" },
		{ "nvim-telescope/telescope-file-browser.nvim" },
		{ "nvim-lua/plenary.nvim" },
	},
	config = function()
		local telescope = require("telescope")
		local fb_actions = telescope.extensions.file_browser.actions

		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				mappings = {
					i = {
						["<CR>"] = "file_tab",
					},
					n = {
						["q"] = actions.close,
						["vs"] = actions.select_vertical,
					},
				},
			},
			extensions = {
				file_browser = {
					theme = "dropdown",
					mappings = {
						["n"] = {
							["C"] = fb_actions.create,
							["R"] = fb_actions.rename,
							e = false, -- disable go to home dir
						},
					},
					initial_mode = "normal",
					path = "%:p:h",
					respect_gitignore = false,
					hijack_netrw = false,
					hidden = true,
					grouped = true,
					previewer = false,
				},
			},
			pickers = {
				treesitter = {
					theme = "dropdown",
					previewer = false,
					mappings = {
						i = {
							["<CR>"] = "select_default",
						},
					},
				},
			},
		})

		telescope.load_extension("file_browser")

		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
		vim.keymap.set("n", "<leader>fe", telescope.extensions.file_browser.file_browser, {})
		vim.keymap.set("n", "<C-d>", builtin.treesitter)
		vim.keymap.set("n", "<leader>gc", builtin.git_commits)
		vim.keymap.set("n", "<leader>fk", builtin.keymaps)
	end,
}
