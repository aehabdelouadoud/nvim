return {
	--[[ 'FtVim/norminette-lint.nvim',
	config = function()
		require('norminette-lint').setup {
			enable_on_start = false, -- Default to false to improve startup performance
			keybinding = '<leader>Nm', -- Default keybinding, you can define yours
		}
	end, ]]
	--[[ {
		'hardyrafael17/norminette42.nvim',
		config = function()
			local norminette = require 'norminette'
			norminette.setup {
				runOnSave = true,
				maxErrorsToShow = 5,
				active = true,
			}
		end,
	}, ]]
	{
		'MrSloth-dev/42-NorminetteNvim',
		dependencies = { 'nvim-lua/plenary.nvim', 'echasnovski/mini.icons' },
		config = function()
			require('norminette').setup {
				norm_keybind = '<leader>n',
				size_keybind = '<leader>ns',
				show_size = true,
				prefix = '✗',
			}
		end,
	},
}
