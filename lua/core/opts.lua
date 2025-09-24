-- Set leader key
vim.g.mapleader = ' '

vim.o.shell = '/usr/bin/env bash'

-- Enable global statusline
vim.o.laststatus = 3

-- Set a simple statusline
-- vim.o.statusline = "%f %m%r %=Ln:%l/%L Col:%c"

-- Enable line numbers
vim.o.number = true
vim.o.relativenumber = true

-- Enable mouse support
vim.o.mouse = 'a'

-- Use system clipboard
vim.o.clipboard = 'unnamedplus'

-- Better search
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = true
vim.o.incsearch = true

-- Tabs & indentation
vim.o.tabstop = 4
vim.o.shiftwidth = 4
-- vim.o.expandtab = true
vim.o.smartindent = true

-- Appearance
vim.o.termguicolors = true
vim.o.signcolumn = 'yes'
vim.o.cursorline = true

-- Save undo history
vim.o.undofile = true

-- Disable swapfile
vim.o.swapfile = false
vim.o.backup = false

-- Set system clipboard as default register
vim.o.clipboard = 'unnamedplus'

-- Set two color columns at 80 and 120 characters
vim.opt.colorcolumn = '80'

-- Disable the built-in statusline
vim.o.laststatus = 0

vim.opt.wrap = false -- Disable wrapping of lines

vim.opt.hidden = true -- Keep buffers in background
vim.opt.sessionoptions:append 'globals' -- Save global vars in sessions
vim.opt.undofile = true -- Persistent undo
vim.opt.lazyredraw = true -- Speed up macros
vim.opt.shortmess:append 'c' -- Reduce completion messages

-- Set listchars
vim.opt.list = true -- Enable list mode
vim.opt.listchars = {
	space = '·',
	tab = '↦ ', -- │
	eol = '↲',
	extends = '»',
	nbsp = '␣',
	precedes = '«',
	trail = '›', -- ·
}

-- Set fillchars
vim.opt.fillchars = {
	diff = '╱',
	eob = '~', -- End of buffer
	fold = ' ',
	foldclose = '',
	foldopen = '',
	foldsep = ' ',
	msgsep = '─',
	horiz = '-',
	vert = '│',
}

-- Enable syntax highlighting
vim.cmd 'syntax enable'

-- Customize diagnostic icons
local signs = {
	Error = '', -- Icon for errors
	Warn = '', -- Icon for warnings
	Info = '', -- Icon for info messages
	Hint = '', -- Icon for hints
}

-- Apply the custom icons to the sign column
for type, icon in pairs(signs) do
	vim.fn.sign_define('DiagnosticSign' .. type, {
		text = icon,
		texthl = 'DiagnosticSign' .. type,
		numhl = 'DiagnosticSign' .. type,
	})
end
