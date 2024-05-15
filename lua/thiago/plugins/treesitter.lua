return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		opts = function(_, opts)
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
				},
				-- Autoinstall languages that are not installed
				auto_install = true,
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = { "markdown" },
				},
				indent = {
					enable = true,
				},
			}
			if type(opts.ensure_installed) == "table" then
				vim.list_extend(opts.ensure_installed, { "bibtex", "latex" })
			end
			if type(opts.highlight.disable) == "table" then
				vim.list_extend(opts.highlight.disable, { "latex" })
			else
				opts.highlight.disable = { "latex" }
			end
		end,

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
