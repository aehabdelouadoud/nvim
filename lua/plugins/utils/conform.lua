return {
	'stevearc/conform.nvim',
	opts = {
		formatters_by_ft = {
			lua = { 'stylua' },
			tex = { 'latexindent' },
			python = { 'black' },
			sh = { 'shfmt' },
			-- c = { 'c_formatter_42' },
			-- c = { 'clang-format' },
			-- cpp = { 'clang-format' },
		},
		formatters = {
			indentwrap = {
				command = '/home/eren/bin/indentwrap', -- full path | NOTE: edit this path as needed
				stdin = true,
			},
		},
		format_on_save = {
			-- These options will be passed to conform.format()
			timeout_ms = 700,
			lsp_format = 'fallback',
		},
	},
}
