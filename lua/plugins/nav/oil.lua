return {
	'stevearc/oil.nvim',
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {
		columns = {
			'icon',
			'permissions',
			'size',
			'mtime',
		},
		win_options = {
			wrap = false,
			signcolumn = 'yes',
			cursorcolumn = false,
			foldcolumn = '0',
			spell = false,
			list = true,
			conceallevel = 3,
			concealcursor = 'nvic',
		},

		view_options = {
			-- Show files and directories that start with "."
			show_hidden = false,
		},
	},
	-- Optional dependencies
	-- dependencies = { { 'echasnovski/mini.icons', opts = {} } },
	dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
	-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
	lazy = false,
}
