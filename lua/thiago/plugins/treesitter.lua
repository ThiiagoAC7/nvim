return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		-- opts = function(_, opts)
		opts = {
				ensure_installed = {
					"lua",
					"luadoc",
					"markdown",
					"markdown_inline",
					"vim",
					"vimdoc",
					"python",
					"javascript",
					"rust",
                    "bibtex",
                    "latex",
				},
				-- Autoinstall languages that are not installed
				auto_install = true,
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = { "markdown", "latex" },
                    disable = { "latex" },
				},
				indent = {
					enable = true,
				},
			},

		config = function(_, opts)
			---@diagnostic disable-next-line: missing-fields
			require("nvim-treesitter.configs").setup(opts)
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
		opts = {
			enabled = true,
			max_lines = 1,
		},
	},

}
