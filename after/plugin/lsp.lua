-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase

local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
	"tsserver",
	"eslint",
	"lua_ls",
})

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
		error = "e",
		warn = "w",
		hint = "h",
		info = "i",
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
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
	sources = sources,
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
					vim.lsp.buf.format({ bufnr = bufnr })
				end,
			})
		end
	end,
})

vim.keymap.set({ "n", "v" }, "<leader>f", vim.lsp.buf.format)
