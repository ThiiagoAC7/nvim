-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase

local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
    'tsserver',
    'eslint',
    'lua_ls',
})

lsp.configure('lua_ls', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

lsp.set_preferences({
    sign_icons = {
        error = 'e',
        warn = 'w',
        hint = 'h',
        info = 'i'
    }
})

-- lspkind icons in cmp menu
local cmp = require('cmp')
local lspkind = require('lspkind')
cmp.setup{
    formatting = {
        format = lspkind.cmp_format({
            mode = 'symbol_text',
        })
    },
}

lsp.setup()

-- disable underline in diagnostics
vim.diagnostic.config{
    underline = false,
    virtual_text = false,
}

-- hide/show diagnostic
vim.keymap.set("n","<leader>h", vim.diagnostic.disable)
vim.keymap.set("n","<leader>s", vim.diagnostic.enable)

vim.keymap.set("n","<leader>g", vim.diagnostic.open_float)


