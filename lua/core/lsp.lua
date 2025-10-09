--                            === Enable and configuring lsps ===

local lsp    = vim.lsp
local config = vim.lsp.config -- NOTE: I know i can just add lsp, but just in case i swapped them :? for some reason.

-- Enable lsps
lsp.enable 'pyright'      -- Python
lsp.enable 'clangd'       -- C/C++
lsp.enable 'luals'        -- Lua
lsp.enable 'texlab'       -- Lua
lsp.enable 'beancountls'  -- Beancount
lsp.enable 'superhtml'    -- The HTML programming language!!

config['beancountls'] = { -- TODO: What's the diffrence btw this format and config.beancountls
	cmd       = { 'beancount-language-server' }, -- Command and arguments to start the server.
	filetypes = { 'beancount' }                  -- Filetypes to automatically attach to.
}

config.texlab = {
	cmd = { 'texlab' },   -- Command and arguments to start the server.
	filetypes = { 'tex' },-- Filetypes to automatically attach to.
}

-- Reconfigure
config.clangd = {
	cmd = {
		'clangd',
		'--clang-tidy',
		'--background-index',
		'--offset-encoding=utf-8',
	},
	root_markers = { '.clangd', 'compile_commands.json' },
	filetypes    = { 'c', 'cpp' },
}

config.luals = {
	cmd = { 'lua-language-server' },
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
			diagnostics = {
				globals = { 'vim' },
			},
			runtime = {
				version = 'LuaJIT',
			},
		},
	},
}
