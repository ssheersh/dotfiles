local opt = vim.opt
-- Tabs

opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true
opt.wrap = true

-- Search
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

-- Appearance
opt.number = true
opt.relativenumber = true
opt.termguicolors = true
vim.cmd "set noshowmode"

--opt.cmdheight = 1
opt.scrolloff = 10
opt.undodir = vim.fn.expand("~/.vim/undodir")
opt.splitright = true
opt.splitbelow = true
opt.iskeyword:append("-")
opt.mouse:append("a")
opt.clipboard:append("unnamedplus")
opt.modifiable = true
opt.encoding = "UTF-8"

opt.swapfile = false


