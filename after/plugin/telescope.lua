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
		layout_config = { height = 0.85, width = 0.8 },
		layout_strategy = "horizontal",
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
			layout_strategy = "flex",
			initial_mode = "normal",
			path = "%:p:h",
			respect_gitignore = false,
			hijack_netrw = false,
			hidden = true,
			grouped = true,
			previewer = false,
			layout_config = { height = 0.85, width = 0.8 },
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
