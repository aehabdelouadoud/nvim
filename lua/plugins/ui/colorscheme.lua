return {
	'dgox16/oldworld.nvim',
	'nyoom-engineering/oxocarbon.nvim',
	'fcpg/vim-orbital',
	'ellisonleao/gruvbox.nvim',
	-- 'aehabdelouadoud/farout.nvim',
	'folke/tokyonight.nvim',
	'aehabdelouadoud/prev-nyx.nvim',
	{
		'sainnhe/gruvbox-material',
		config = function()
			vim.cmd [[let g:gruvbox_material_background = 'soft']]
			vim.cmd [[colorscheme gruvbox-material]]
		end,
	},
}
