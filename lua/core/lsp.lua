-- Enable lsps
vim.lsp.enable 'pyright' -- Python
-- vim.lsp.enable 'clangd' -- C/C++
vim.lsp.enable 'luals' -- Lua
vim.lsp.enable 'texlab' -- Lua
vim.lsp.enable 'autotools'

-- Configure it
vim.lsp.config['autotools'] = {
	cmd = { 'autotools-language-server' }, -- Make sure this is in your PATH
	filetypes = { 'make' },
	root_markers = { 'Makefile', '.git' },
	settings = {},
}

-- Reconfigure
vim.lsp.config.clangd = {
	cmd = {
		'clangd',
		'--clang-tidy',
		'--background-index',
		'--offset-encoding=utf-8',
	},
	root_markers = { '.clangd', 'compile_commands.json' },
	filetypes = { 'c', 'cpp' },
}

vim.lsp.config['luals'] = {
	-- Command and arguments to start the server.
	cmd = { 'lua-language-server' },

	-- Filetypes to automatically attach to.
	filetypes = { 'lua' },

	-- Sets the "root directory" to the parent directory of the file in the
	-- current buffer that contains either a ".luarc.json" or a
	-- ".luarc.jsonc" file. Files that share a root directory will reuse
	-- the connection to the same LSP server.
	root_markers = { '.luarc.json', '.luarc.jsonc' },

	-- Specific settings to send to the server. The schema for this is
	-- defined by the server. For example the schema for lua-language-server
	-- can be found here https://raw.githubusercontent.com/LuaLS/vscode-lua/master/setting/schema.json
	settings = {
		Lua = {
			runtime = {
				version = 'LuaJIT',
			},
		},
	},
}

vim.lsp.config['texlab'] = {
	-- Command and arguments to start the server.
	cmd = { 'texlab' },

	-- Filetypes to automatically attach to.
	filetypes = { 'tex' },
}
