vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n","<leader><leader>",vim.cmd.so)

-- exits file 
keymap.set("n","<leader>ex", vim.cmd.Ex)

-- cntrl s saves current file
keymap.set("n", "<C-s>", vim.cmd.w)

-- delete and paste without replacing current p
keymap.set("x", "<leader>p", "\"_dP")

-- copy lines into system clipboard
keymap.set("n", "<leader>y", "\"+y")
keymap.set("v", "<leader>y", "\"+y")
keymap.set("n", "<leader>Y", "\"+Y")

-- replace word in file
keymap.set("n", "<leader>q", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- jump back to older cursor pos
keymap.set('n','<C-j>','<C-o>')

-- remapping to abnt layout in normal,visual and select mode
-- hjkl -> jklç (<Left>,<Down>,<Up>,<Right>)
keymap.set({'n','v','o'},'h','<Nop>',{noremap = true})
keymap.set({'n','v','o'},'j','<Nop>',{noremap = true})
keymap.set({'n','v','o'},'k','<Nop>',{noremap = true})
keymap.set({'n','v','o'},'l','<Nop>',{noremap = true})

keymap.set({'n','v','o'},'j','<Left>',{noremap = true})
keymap.set({'n','v','o'},'k','<Down>',{noremap = true})
keymap.set({'n','v','o'},'l','<Up>',{noremap = true})
keymap.set({'n','v','o'},'ç','<Right>',{noremap = true} )


