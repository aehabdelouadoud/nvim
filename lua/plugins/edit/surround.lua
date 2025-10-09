return {
	'kylechui/nvim-surround',
	version = '^3.0.0', -- Use for stability; omit to use `main` branch for the latest features
	event = 'VeryLazy',
	config = function()
		require('nvim-surround').setup {
			-- FIX: Surround is being in conflict with flash in terms of keumaps...
		}
	end,
}
