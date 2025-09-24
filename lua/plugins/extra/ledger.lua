return {
	'wllfaria/ledger.nvim',
	-- tree sitter needs to be loaded before ledger.nvim loads
	dependencies = { 'nvim-treesitter/nvim-treesitter' },
	config = function()
		require('ledger').setup()
	end,
}
