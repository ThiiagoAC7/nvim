return {

	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		config = function()
			local harpoon = require("harpoon")

			harpoon:setup()

			vim.keymap.set("n", "<leader>a", function()
				harpoon:list():add()
			end)
			vim.keymap.set("n", "<C-e>", function()
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end)

			vim.keymap.set("n", "<C-h>", function()
				harpoon:list():select(1)
			end)
			vim.keymap.set("n", "<C-j>", function()
				harpoon:list():select(2)
			end)
			vim.keymap.set("n", "<C-n>", function()
				harpoon:list():select(3)
			end)
			vim.keymap.set("n", "<C-b>", function()
				harpoon:list():select(4)
			end)
		end,
	},

	{
		"stevearc/oil.nvim",
		config = function()
			local oil = require("oil")
			oil.setup({
				default_file_explorer = true,
				columns = {
					"size",
					"permissions",
					"icon",
				},
				skip_confirm_for_simple_edits = true,
				use_default_keymaps = false,
				view_options = { show_hidden = true },
				keymaps = {
					["g?"] = "actions.show_help",
					["<CR>"] = "actions.select",
					["vs"] = "actions.select_vsplit",
					["hs"] = "actions.select_split",
					["<C-t>"] = "actions.select_tab",
					["<C-p>"] = "actions.preview",
					["q"] = "actions.close",
					["<C-l>l"] = "actions.refresh",
					["-"] = "actions.parent",
					["_"] = "actions.open_cwd",
					["`"] = "actions.cd",
					["~"] = "actions.tcd",
					["gs"] = "actions.change_sort",
					["gx"] = "actions.open_external",
					["g."] = "actions.toggle_hidden",
				},
				float = {
					border = "rounded",
				},
			})

			vim.keymap.set("n", "<leader>ex", "<cmd>Oil<CR>")
			vim.keymap.set("n", "<leader>fe", oil.toggle_float)
		end,
	},
}
