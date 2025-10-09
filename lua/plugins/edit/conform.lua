return {
	'stevearc/conform.nvim',
	opts = {
		formatters_by_ft = {
			lua = { 'stylua' },
			tex = { 'latexindent' },
			python = { 'black' },
			sh = { 'shfmt' },
			rust = { 'rustfmt' },
            beancount = {'bean-format'},
            ledger = {'bean-format'}
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
