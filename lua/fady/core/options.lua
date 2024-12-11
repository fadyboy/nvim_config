vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = false
opt.number = true

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line

opt.wrap = false -- disable line wrap

-- search settings
opt.ignorecase = true
opt.smartcase = true -- if mixed case, assume case sensitive

opt.cursorline = true

opt.termguicolors = true
opt.signcolumn = "yes" -- show sign column so that text doesn't shift
opt.background = "dark"

opt.backspace = "indent,eol,start" -- allow backspace on indent, eol, or start position

opt.clipboard:append("unnamedplus") -- use system clipboard as default register

opt.splitright = true
opt.splitbelow = true
