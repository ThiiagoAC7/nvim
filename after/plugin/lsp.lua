-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase

local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
	"lua_ls",
})

local cmp = require("cmp")
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
	["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
	["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
	["<C-Space>"] = cmp.mapping.complete(),
})
cmp_mappings["<Tab>"] = nil
cmp_mappings["<S-Tab>"] = nil

lsp.configure("lua_ls", {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})

lsp.set_preferences({
	sign_icons = {
		error = "",
		warn = "",
		hint = "",
		info = "",
	},
})

-- lspkind icons in cmp menu

local lspkind = require("lspkind")
lsp.setup_nvim_cmp({
	formatting = {
		format = lspkind.cmp_format({
			mode = "symbol_text",
		}),
	},
	sources = {
		{ name = "path" },
		{ name = "nvim_lsp" },
		{ name = "luasnip", keyword_length = 2 },
		{ name = "buffer", keyword_length = 3 },
	},
	mapping = cmp_mappings,
})

lsp.setup()

-- disable underline in diagnostics
vim.diagnostic.config({
	underline = false,
	virtual_text = false,
})

-- hide/show diagnostic
vim.keymap.set("n", "<leader>h", vim.diagnostic.disable)
vim.keymap.set("n", "<leader>s", vim.diagnostic.enable)

vim.keymap.set("n", "<leader>g", vim.diagnostic.open_float)

-- auto formating on save
local null_ls = require("null-ls")
local formatting = null_ls.builtins.formatting
local sources = {
	formatting.autopep8,
	formatting.eslint_d,
	formatting.stylua,
}

null_ls.setup({
	sources = sources,
})

vim.keymap.set({ "n", "v" }, "<leader>f", vim.lsp.buf.format)

require("mason-null-ls").setup({
	ensure_installed = nil,
	automatic_installation = false,
	automatic_setup = true,
})
