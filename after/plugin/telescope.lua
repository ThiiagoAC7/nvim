local telescope = require('telescope')
local fb_actions = telescope.extensions.file_browser.actions

local actions = require('telescope.actions')

telescope.setup{
    defaults = {
        mappings = {
            i = {
                ["<CR>"] = "file_tab",
            },
            n = {
                ["q"] = actions.close,
                ["k"] =  actions.move_selection_next,
                ["l"] =  actions.move_selection_previous,
                ["j"] = false,
            }
        },
        layout_config = { height = 0.85, width = 0.8 },
        layout_strategy = 'horizontal'
    },
    extensions = {
        file_browser = {
            theme = 'dropdown',
            hijack_netrw = true,
            mappings = {
                ["n"] = {
                    ["C"] = fb_actions.create,
                    ["R"] = fb_actions.rename,
                    e = false, -- disable go to home dir
                }
            },
            layout_strategy = 'center',
            initial_mode = "normal",
            layout_config = { height = 0.95, width = 0.95},
            hidden = true,
        }
    },
    pickers = {
        treesitter = {
            theme = 'dropdown',
            previewer = false
        }
    }
}

telescope.load_extension('file_browser')

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>pg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>ph', builtin.help_tags, {})
vim.keymap.set('n', '<C-d>', builtin.treesitter)

-- file browser

local function telescope_buffer_dir()
    return vim.fn.expand('%:p:h')
end

vim.keymap.set('n','<leader>pe',function()
    telescope.extensions.file_browser.file_browser({
        path = "%:p:h",
        cwd = telescope_buffer_dir(),
        respect_gitignore = false,
        hidden = true,
        grouped = true,
        previewer = false,
        layout_strategy = 'center',
        layout_config = { height = 0.85, width = 0.8},
    })
end)

