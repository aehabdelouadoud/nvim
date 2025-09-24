return {
	'Diogo-ss/42-header.nvim',
	cmd = { 'Stdheader' },
	keys = { '<F10>' },
	opts = {
		default_map = false, -- Default mapping <F1> in normal mode.
		auto_update = true, -- Update header when saving.
		user = 'abait-el', -- Your user.
		mail = 'abait-el@example.com', -- Your mail.
		-- add other options.
	},
	config = function(_, opts)
		require('42header').setup(opts)
	end,
}
