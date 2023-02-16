local buff = require('bufferline')

buff.setup{
    options = {
        mode = 'tabs',
        numbers = 'ordinal',
        diagnostics = "nvim_lsp",
        show_buffer_icons = false,
        separator_style = "slant",
    }
}


-- navigations
vim.keymap.set("n","<Leader>1","<Cmd>BufferLineGoToBuffer 1<CR>")
vim.keymap.set("n","<Leader>2","<Cmd>BufferLineGoToBuffer 2<CR>")
vim.keymap.set("n","<Leader>3","<Cmd>BufferLineGoToBuffer 3<CR>")
vim.keymap.set("n","<Leader>4","<Cmd>BufferLineGoToBuffer 4<CR>")
vim.keymap.set("n","<Leader>5","<Cmd>BufferLineGoToBuffer 5<CR>")
vim.keymap.set("n","<Leader>6","<Cmd>BufferLineGoToBuffer 6<CR>")
vim.keymap.set("n","<Leader>7","<Cmd>BufferLineGoToBuffer 7<CR>")
vim.keymap.set("n","<Leader>8","<Cmd>BufferLineGoToBuffer 8<CR>")
vim.keymap.set("n","<Leader>9","<Cmd>BufferLineGoToBuffer 9<CR>")
vim.keymap.set("n","<Leader>0","<Cmd>BufferLineGoToBuffer -1<CR>")

-- go to next/prev buffer
vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})

-- close current window buffer 
vim.keymap.set("n","<Leader>w","<Cmd>bdelete<CR>")

