vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- auto save files when navigating and read files refresh updated files
vim.opt.autowrite = true
vim.opt.autoread = true
vim.opt.cursorline = true

-- use spaces for tabs and whatnot
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.opt.wrap = false

vim.cmd([[ set noswapfile ]])
vim.cmd([[ set termguicolors ]])

--Line numbers
vim.wo.number = true
vim.opt.relativenumber = true

-- enable mouse mode
vim.opt.mouse = "a"

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- sync OS clipboard
vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)

vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10
