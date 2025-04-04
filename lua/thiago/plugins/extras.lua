return {

	{
		"lervag/vimtex",
		init = function()
			vim.g.vimtex_view_method = "zathura"
            -- vim.g.vimtex_quickfix_mode = 0 -- dont open quickfix window automatically
            vim.g.vimtex_quickfix_autoclose_after_keystrokes = 1
		end,
	},

	{ "rust-lang/rust.vim" },

	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
	},

}
