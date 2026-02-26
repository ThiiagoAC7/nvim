vim.opt.compatible = false
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.ai = true
vim.opt.smartindent = true

vim.opt.swapfile = false

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.showtabline = 2

vim.opt.signcolumn = "yes"

vim.opt.wrap = false

vim.opt.splitright = true
vim.opt.splitbelow = true

-- netrw
vim.g.netrw_banner = 0

-- Save undo history
vim.opt.undofile = true

-- Sync clipboard between OS and Neovim.
vim.opt.clipboard = "unnamedplus"

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

vim.g.have_nerd_font = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Show which line your cursor is on + vertical column
vim.opt.colorcolumn = "100"
vim.opt.cursorline = true

vim.g.python3_host_prog = vim.fn.expand("~/.pixi/bin/python")
