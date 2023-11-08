---@diagnostic disable: undefined-global

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	-- fuzzy finder
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({ "nvim-telescope/telescope-file-browser.nvim" })

	-- set color scheme
	use({ "folke/tokyonight.nvim", as = "tokyonight", lock = true})
	use({ "catppuccin/nvim", as = "catppuccin", lock = true, config = function ()
	  vim.cmd("colorscheme catppuccin") 
	end})

	-- treesitter
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

	-- git stuff
	use("tpope/vim-fugitive")
	use({"lewis6991/gitsigns.nvim", lock=true})

	use({"nvim-lualine/lualine.nvim", lock = true}) -- Fancier statusline
	use("windwp/nvim-autopairs")
	use("akinsho/nvim-bufferline.lua", {after = "catppuccin", lock=true})

	use("nvim-tree/nvim-web-devicons")

	-- autocomplete / lsp
	use("onsails/lspkind-nvim") -- vscode-like pictograms
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v1.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{ "williamboman/mason.nvim" }, -- Optional
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" }, -- Required
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "hrsh7th/cmp-buffer" }, -- Optional
			{ "hrsh7th/cmp-path" }, -- Optional
			{ "saadparwaiz1/cmp_luasnip" }, -- Optional
			{ "hrsh7th/cmp-nvim-lua" }, -- Optional

			-- Snippets
			{ "L3MON4D3/LuaSnip" }, -- Required
			{ "rafamadriz/friendly-snippets" }, -- Optional
		},
	})
	use("jay-babu/mason-null-ls.nvim")

	-- error messages
	use("folke/trouble.nvim")
	use("numToStr/Comment.nvim")

	use("jose-elias-alvarez/null-ls.nvim")

	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
	})

end)
