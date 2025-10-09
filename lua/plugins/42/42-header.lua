return {
	'Diogo-ss/42-header.nvim',
	cmd = { 'Stdheader' },
	opts = {
		default_map = false, -- Default mapping <F1> in normal mode.
		auto_update = false, -- Update header when saving. HACK: Remove it!
		user = 'abait-el', -- Your user.
		mail = 'abait-el@example.com', -- Your mail.
	},
	config = function(_, opts)
		require('42header').setup(opts)
	end,
}
