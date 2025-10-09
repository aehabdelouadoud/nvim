return {
	'lukas-reineke/virt-column.nvim',
	opts = {
		char = '│',
		virtcolumn = '+1,80,120', -- FIX: What's +1?
		highlight = 'ColorColumn',
		exclude = {
			filetypes = {
				'oil',
				'neotree',
				'lazy',
				'markdown',
				'checkhealth',
				'quickfix',
				'trouble'
			},
		},
	},
}
