--                                    === Setting keymaps ===

local map       = vim.keymap.set
local telescope = require 'telescope.builtin'

--[[ local opts = { noremap = true, silent = true }
-- Normal-mode commands
vim.keymap.set('n', '<A-j>', ':MoveLine(1)<CR>', opts)
vim.keymap.set('n', '<A-k>', ':MoveLine(-1)<CR>', opts)
vim.keymap.set('n', '<A-h>', ':MoveHChar(-1)<CR>', opts)
vim.keymap.set('n', '<A-l>', ':MoveHChar(1)<CR>', opts)
vim.keymap.set('n', '<leader>wf', ':MoveWord(1)<CR>', opts)
vim.keymap.set('n', '<leader>wb', ':MoveWord(-1)<CR>', opts)

-- Visual-mode commands
vim.keymap.set('v', '<A-j>', ':MoveBlock(1)<CR>', opts)
vim.keymap.set('v', '<A-k>', ':MoveBlock(-1)<CR>', opts)
vim.keymap.set('v', '<A-h>', ':MoveHBlock(-1)<CR>', opts)
vim.keymap.set('v', '<A-l>', ':MoveHBlock(1)<CR>', opts)
]]

map('n', '<leader>w', '<CMD>w<CR>',        { desc = 'Save file' })
map('n', '<leader>z', '<CMD>ZenMode<CR>',        { desc = 'Toggle Zen Mode' })
map('n', '<leader>q', '<CMD>q<CR>',        { desc = 'Quit buffer' })

-- Navigation
map('n', '-',         '<CMD>Oil<CR>',                    { desc = 'Open parent directory' })
map('n', '<leader>o', '<CMD>Lspsaga outline<CR>',        { desc = 'Open outline' })

map('n', '<leader>R', '<CMD>RunCode<CR>',  { desc = 'Run Code' })
map('n', '<C-\\>',    '<CMD>ToggleTerm direction=vertical size=60<CR>', { desc = 'Open vertical terminal' })

-- Telescope
map('n', '<leader>m', '<CMD>Telescope marks<CR>',   { desc = 'Telescope marks' })
map('n', '<leader>ff', telescope.find_files,        { desc = 'Telescope find files' })
map('n', '<leader>fg', telescope.live_grep,         { desc = 'Telescope live grep' })
map('n', '<leader>fb', telescope.buffers,           { desc = 'Telescope buffers' })
map('n', '<leader>fh', telescope.help_tags,         { desc = 'Telescope help tags' })

-- Git
map('n', '<leader>g', '<cmd>Fugit2<cr>', { desc = 'Open Fugit' })

-- lsp virtual lines
map('n',
	'tl',
	function()
		vim.diagnostic.config {
			virtual_lines = not vim.diagnostic.config().virtual_lines
		}
	end,
	{ desc = 'Toggle diagnostic virtual_lines' }
)

-- Dap
map('n',
	'du',
	function()
		require('dapui').toggle()
	end,
	{ desc = 'Toggle UI' }
)

-- Hydra... NOTE: Install it, useful plugin!!
