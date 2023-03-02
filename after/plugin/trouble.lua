local trouble = require("trouble")

trouble.setup({
	action_keys = {
		previous = "l",
		next = "k",
	},
	mode = "document_diagnostics",
})

vim.keymap.set("n", "<leader>t", "<cmd>TroubleToggle<cr>")
