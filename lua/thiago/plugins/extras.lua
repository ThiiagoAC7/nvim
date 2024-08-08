return {

	{
		"lervag/vimtex",
		init = function()
			vim.g.vimtex_view_method = "zathura"
		end,
	},

	{
		"supermaven-inc/supermaven-nvim",
		config = function()
			require("supermaven-nvim").setup({
				keymaps = {
					accept_suggestion = "<Tab>",
					clear_suggestion = "<C-n>",
					accept_word = "<C-j>",
				},
				ignore_filetypes = {
					markdown = true,
					txt = true,
					oil = true,
					tex = true,
				},
				color = {
					suggestion_color = "#828282",
					cterm = 244,
				},
			})
		end,
	},

	{ "rust-lang/rust.vim" },

    {
        'MeanderingProgrammer/markdown.nvim',
        name = 'render-markdown', -- Only needed if you have another plugin named markdown.nvim
        -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
        -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
        dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
        config = function()
            require('render-markdown').setup({})
        end,
    },

	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
	},

	-- {
	-- 	"wookayin/semshi", -- maintained fork
	-- 	ft = "python",
	-- 	build = ":UpdateRemotePlugins", -- don't disable `rplugin` in lazy.nvim for this
	-- 	init = function()
	-- 		vim.g.python3_host_prog = vim.fn.exepath("python3")
	-- 		-- better done by LSP
	-- 		vim.g["semshi#error_sign"] = false
	-- 		vim.g["semshi#simplify_markup"] = false
	-- 		vim.g["semshi#mark_selected_nodes"] = false
	-- 		vim.g["semshi#update_delay_factor"] = 0.001
	--
	-- 		vim.api.nvim_create_autocmd({ "VimEnter", "ColorScheme" }, {
	-- 			callback = function()
	-- 				vim.cmd([[
	-- 					highlight! semshiGlobal gui=italic
	-- 					highlight! link semshiImported @lsp.type.namespace
	-- 					highlight! link semshiParameter @lsp.type.parameter
	-- 					highlight! link semshiParameterUnused DiagnosticUnnecessary
	-- 					highlight! link semshiBuiltin @function.builtin
	-- 					highlight! link semshiAttribute @field
	-- 					highlight! link semshiSelf @lsp.type.selfKeyword
	-- 					highlight! link semshiUnresolved @lsp.type.unresolvedReference
	-- 					highlight! link semshiFree @comment
	-- 				]])
	-- 			end,
	-- 		})
	-- 	end,
	-- },
}
