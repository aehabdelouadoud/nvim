return {
	'MrSloth-dev/42-NorminetteNvim',
	dependencies = { 'nvim-lua/plenary.nvim', --[[ 'echasnovski/mini.icons' ]] },
	config = function()
		require('norminette').setup {
			norm_keybind = '<leader>n',
			size_keybind = '<leader>ns',
			show_size = false,
			prefix = '󰿊 norminette ', -- Other chars: ✗ 
		}
	end,
}

-- NOTE: Alternatives: hardyrafael17/norminette42.nvim FtVim/norminette-lint.nvim
