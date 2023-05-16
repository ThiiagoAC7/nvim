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
		highlights = require("catppuccin.groups.integrations.bufferline").get(),
	},
})

-- go to next/prev buffer
vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", {})
vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", {})
