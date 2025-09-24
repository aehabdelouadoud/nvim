return {
	'mcauley-penney/visual-whitespace.nvim',
	config = true,
	event = 'ModeChanged *:[vV\22]', -- optionally, lazy load on entering visual mode
	opts = {
		ignore = {
			filetypes = { 'oil', 'neotree', 'lazy', 'markdown', 'checkhealth' },
			buftypes = {},
		},
	},
}
