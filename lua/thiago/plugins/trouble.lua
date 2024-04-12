return {
	"folke/trouble.nvim",
	config = function()
		local trouble = require("trouble")
		trouble.setup({
			mode = "document_diagnostics",
		})

		vim.keymap.set("n", "<leader>t", "<cmd>TroubleToggle<cr>")
	end,
}
