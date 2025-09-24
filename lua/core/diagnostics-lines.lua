-- Configure Neovim's built-in diagnostic system to show virtual lines
vim.diagnostic.config {
	virtual_text = false, -- Disable virtual text (optional)
	virtual_lines = true, -- Enable virtual lines for diagnostics
	signs = true, -- Show diagnostic signs (e.g., icons)
	update_in_insert = true, -- Show diagnostics even while typing
}

vim.diagnostic.config {
	virtual_lines = {
		highlight = 'DiagnosticUnderlineError', -- Highlight group for error lines
		severity = vim.diagnostic.severity.ERROR, -- Show only errors as virtual lines
	},
}
