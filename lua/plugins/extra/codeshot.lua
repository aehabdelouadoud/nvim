return {
	'SergioRibera/codeshot.nvim',
	config = function()
		require('codesnap').setup {
			copy = '%c | wl-copy',
			has_breadcrumbs = true,
			watermark = '',
			bg_theme = 'bamboo',
		}
	end,
}
