return {
	enabled = true,
	'nvim-mini/mini.nvim',
	version = '*',
	config = function ()
		require('mini.align').setup({}) -- HACK: Add options! cause s is being already used.
	end
}
