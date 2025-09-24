return {
	{
		'williamboman/mason.nvim',
		dependencies = {
			'williamboman/mason-lspconfig.nvim',
			'jay-babu/mason-nvim-dap.nvim',
		},
		config = function()
			require('mason').setup()
		end,
	},
	{
		'mfussenegger/nvim-dap',
		config = function()
			require('mason-nvim-dap').setup()
		end,
	},
}
