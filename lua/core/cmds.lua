--                           === AUTOCMDS ===

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`

local autocmd = vim.api.nvim_create_autocmd

autocmd('TextYankPost', {
	desc = 'Highlight when yanking (copying) text',
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Restore cursor to last known position when opening a file
autocmd('BufReadPost', {
	desc = 'Restore cursor to last known position when opening a file',
	callback = function()
		local mark = vim.api.nvim_buf_get_mark(0, '"')
		local lcount = vim.api.nvim_buf_line_count(0)
		if mark[1] > 0 and mark[1] <= lcount then
			vim.api.nvim_win_set_cursor(0, mark)
		end
	end,
})

-- Filetype-specific indentation
autocmd('FileType', {
	pattern = { 'html', 'css' },
	callback = function()
		vim.opt_local.shiftwidth  = 2    -- indentation width for >> / <<
		vim.opt_local.tabstop     = 2    -- width of a literal tab character
		vim.opt_local.softtabstop = 2    -- how many spaces a Tab counts while editing
		vim.opt_local.expandtab   = true -- convert tabs to spaces
	end,
})

autocmd('FileType', {
	pattern = { 'lisp' },
	callback = function()
		-- Set listchars
		vim.opt_local.list = true -- Disable list mode
	end,
})


-- TODO: Create an auto cmd that expands tabs in all buffer types except in c
autocmd('FileType', {
	pattern = { 'c', 'beancount' },
	callback = function()
		-- Set listchars
		vim.opt_local.expandtab = false -- Disable list mode
	end,
})

-- FIX: Isn't working! haha
autocmd({'BufNewFile', 'FileType', 'BufLeave'}, {
	desc = 'Add 42 header to every new c file!, when created ONLY, and update it when leaving.',
	pattern = { 'c', 'cpp' },
	callback = function()
        if vim.opt_local.modified then
            vim.cmd[[Stdheader]]
        end
	end,
})

-- TODO: Create an auto cmd that calls Stdheader whenever a .c file that contains the header changes!

-- autocmd('BufNewFile', {
-- 	desc = 'Add 42 header to every new c file!, when created ONLY',
-- 	pattern = { 'c' },
-- 	callback = function()
-- 		vim.cmd[[Stdheader]]
-- 	end,
-- })
