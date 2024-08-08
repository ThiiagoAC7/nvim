return {
	{
		"j-hui/fidget.nvim",
		opts = {},
	},

	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	},
}
