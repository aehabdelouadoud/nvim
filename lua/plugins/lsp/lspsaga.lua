return {
	'nvimdev/lspsaga.nvim',
	config = function()
		require('lspsaga').setup {
			-- NOTE: Disable symbols bar.
		}
	end,
	dependencies = {
		'nvim-treesitter/nvim-treesitter', -- optional
		'nvim-tree/nvim-web-devicons', -- optional
	},
}
