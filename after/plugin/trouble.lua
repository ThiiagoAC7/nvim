local trouble = require('trouble')

trouble.setup({
    action_keys = {
        previous = "l",
        next = "k"
    }
})


vim.keymap.set('n','<leader>t','<cmd>TroubleToggle<cr>')

