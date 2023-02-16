-- color scheme config
require('tokyonight').setup({
    style = 'night',
    terminal_colors = true,
    styles = {
        comments = { italic = true },
        keywords = { italic = true },
    },

})

vim.cmd.colorscheme('tokyonight')

