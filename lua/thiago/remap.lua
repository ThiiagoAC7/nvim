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
keymap.set("n", "<leader>q", ":%s/<C-r><C-w>/<C-r><C-w>/c<Left><Left>")

keymap.set("n", "<C-f>", "/<C-r><C-w>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- jump back to older cursor pos
keymap.set("n", "<C-h>", "<C-o>")

-- close current window buffer
vim.keymap.set("n", "<Leader>w", "<Cmd>bdelete<CR>")

keymap.set({ "n", "v" }, "H", "^") -- goes to the first character of line
keymap.set({ "n", "v" }, "L", "g_") -- end of line at the last non whitespace character

keymap.set("n", "<S-k>", "<cmd>join<CR>")

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("v", "<Tab>", ">")
keymap.set("v", "<S-Tab>", "<")

-- esc to jj
keymap.set("i", "jj", "<Esc>", { silent = true })
