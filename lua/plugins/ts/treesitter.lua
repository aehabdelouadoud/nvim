return {
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',
	config = function()
		require('nvim-treesitter.configs').setup {
			highlight = {
				enable = true, -- Enable treesitter-based highlighting
				additional_vim_regex_highlighting = false,
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = 'gnn',
					node_incremental = 'grn',
					scope_incremental = 'grc',
					node_decremental = 'grm',
				},
			},
			indent = {
				enable = true, -- Enable treesitter-based indentation
			},
		}
	end,
}
