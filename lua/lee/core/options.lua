vim.g.netrw_liststyle = 3

local opt = vim.opt

-- Line numbers
vim.wo.number = true
opt.relativenumber = true
-- opt.signcolumn = "auto:2"

-- Line numbers in netrw
vim.g.netrw_bufsettings = "noma nomod rnu nobl nowrap ro"

-- Tabs and indents
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- Search cases
opt.ignorecase = true
opt.smartcase = true

-- Colors
vim.opt.termguicolors = true

-- General options
opt.scrolloff = 4
opt.cursorline = true
opt.showmode = false

-- Undotree presist undo history
vim.o.undofile = true

-- Add newline listchar
vim.opt.listchars:append("eol:")
vim.opt.listchars:append("tab:│ ")
vim.opt.list = true

-- Responsiveness and window behaviour
opt.updatetime = 250
opt.splitright = true
opt.splitbelow = true
opt.clipboard = "unnamedplus"
opt.undolevels = 10000
