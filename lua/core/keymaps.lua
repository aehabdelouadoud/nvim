vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
vim.keymap.set('n', '<leader>r', '<CMD>RunCode<CR>', { desc = 'Run Code' })
vim.keymap.set('n', '<F10>', '<CMD>Stdheader<CR>', { desc = 'Add 42 header' })

vim.keymap.set(
	'n',
	'<leader>tf',
	'<CMD>ToggleTerm direction=float<CR>',
	{ desc = 'Open float terminal' }
)

vim.keymap.set(
	'n',
	'<leader>ts',
	'<CMD>ToggleTerm direction=horizontal<CR>',
	{ desc = 'Open horizontal terminal' }
)

vim.keymap.set(
	'v',
	'<leader>s',
	'<CMD>CodeSnap<CR>',
	{ desc = 'Take a screenshot of selected text' }
)

vim.keymap.set('n', '<leader>w', '<CMD>w<CR>', { desc = 'Save file' })

vim.keymap.set(
	'n',
	'<Leader>tt',
	toggle_virtual_lines,
	{ desc = 'Toggle virtual_lines diagnostics' }
)

local builtin = require 'telescope.builtin'
vim.keymap.set(
	'n',
	'<leader>ff',
	builtin.find_files,
	{ desc = 'Telescope find files' }
)
vim.keymap.set(
	'n',
	'<leader>fg',
	builtin.live_grep,
	{ desc = 'Telescope live grep' }
)
vim.keymap.set(
	'n',
	'<leader>fb',
	builtin.buffers,
	{ desc = 'Telescope buffers' }
)
vim.keymap.set(
	'n',
	'<leader>fh',
	builtin.help_tags,
	{ desc = 'Telescope help tags' }
)

-- lsp virtual lines

-- Toggle built-in virtual_lines diagnostics
--[[ local virtual_lines_enabled = true

function _G.toggle_virtual_lines()
	virtual_lines_enabled = not virtual_lines_enabled
	vim.diagnostic.config {
		virtual_lines = virtual_lines_enabled,
		virtual_text = not virtual_lines_enabled,
	}
	print('virtual_lines: ' .. tostring(virtual_lines_enabled))
end ]]
