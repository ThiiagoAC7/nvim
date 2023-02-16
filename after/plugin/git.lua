-- help 
-- https://github.com/tpope/vim-fugitive/blob/master/doc/fugitive.txt
vim.keymap.set("n","<leader>gs", "<Cmd>vert Git<CR>")

vim.keymap.set("n","<leader>gd", "<Cmd>:Gvdiffsplit <CR>")
--Use Vim's |do| and |dp| to stage and unstage changes.

local gitsigns = require('gitsigns')

-- todo
-- > see configs
gitsigns.setup()


