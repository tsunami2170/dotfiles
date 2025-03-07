local opt = vim.opt

opt.modifiable = true

-- Display line number
opt.number = true
opt.relativenumber = false
opt.cursorline = true
opt.cursorlineopt = "line,number"

-- enable clipboard
opt.clipboard = "unnamedplus"

-- Encoding
opt.fileencoding = "utf-8"

-- Enable automatic indent
opt.smartindent = true
opt.autoindent = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.expandtab = false

-- Settings for when scrolling
opt.scrolloff = 5

-- Enable backspace more intuitive
opt.backspace = { "indent", "eol", "start" }

-- Highlight matching brackets
opt.showmatch = true

-- Set statusline at any time
opt.laststatus = 3

-- Settings for search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.wrapscan = true
opt.incsearch = true

-- Display tabline at any time
opt.showtabline = 2

-- Settings for split
opt.splitright = true
opt.splitbelow = true

-- Save undo
opt.undofile = true
opt.undodir = vim.fn.expand("~/.nvim/undo")
opt.swapfile = false

-- Set shell
opt.shell = "zsh"

-- Enable wider range of colors
opt.termguicolors = true

opt.colorcolumn = "80"
