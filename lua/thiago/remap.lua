vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader><leader>", vim.cmd.so)

keymap.set("n", "<leader>qa", "<cmd>qa<cr>")

-- exits file
keymap.set("n", "<leader>ex", vim.cmd.Ex)

-- cntrl s saves current file
keymap.set("n", "<C-s>", vim.cmd.w)

-- delete and paste without replacing current p
keymap.set("x", "<leader>p", '"_dP')

-- copy lines into system clipboard
keymap.set("n", "<leader>y", '"+y')
keymap.set("v", "<leader>y", '"+y')
keymap.set("n", "<leader>Y", '"+Y')

-- replace word in file
keymap.set("n", "<leader>q", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

keymap.set("n", "<C-f>", "/<C-r><C-w>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- jump back to older cursor pos
keymap.set("n", "<C-j>", "<C-o>")

-- close current window buffer
vim.keymap.set("n", "<Leader>w", "<Cmd>bdelete<CR>")

keymap.set({ "n", "v" }, "J", "^") -- goes to the first character of line
keymap.set({ "n", "v" }, "Ç", "$") -- end of line

keymap.set("n", "<S-l>", "<cmd>join<CR>")

-- esc to hh
keymap.set({"i", "v"}, "hh", "<Esc>", { silent = true })
keymap.set({"i", "v"}, "HH", "<Esc>", { silent = true })

-- remapping to abnt layout in normal,visual and select mode
-- hjkl -> jklç (<Left>,<Down>,<Up>,<Right>)
keymap.set({ "n", "v", "o" }, "h", "<Nop>", { noremap = true })
keymap.set({ "n", "v", "o" }, "j", "<Nop>", { noremap = true })
keymap.set({ "n", "v", "o" }, "k", "<Nop>", { noremap = true })
keymap.set({ "n", "v", "o" }, "l", "<Nop>", { noremap = true })

keymap.set({ "n", "v", "o" }, "j", "<Left>", { noremap = true })
keymap.set({ "n", "v", "o" }, "k", "<Down>", { noremap = true })
keymap.set({ "n", "v", "o" }, "l", "<Up>", { noremap = true })
keymap.set({ "n", "v", "o" }, "ç", "<Right>", { noremap = true })
