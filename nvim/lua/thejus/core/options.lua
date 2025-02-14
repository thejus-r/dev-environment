vim.o.termguicolors = true
vim.o.background = "dark"

local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.signcolumn = "yes"

-- search settings
opt.ignorecase = true
opt.smartcase = true

opt.wrap = false
opt.clipboard = "unnamedplus"

-- cursor
opt.cursorline = true

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- backspace
opt.backspace = "indent,eol,start"

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false

if vim.fn.has("nvim-0.10") == 1 then
  opt.smoothscroll = true
end

