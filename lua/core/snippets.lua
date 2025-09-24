local config = {
	default_engine = 'duckduckgo',
	query_map = {
		google = 'https://www.google.com/search?q=%s',
		bing = 'https://cn.bing.com/search?q=%s',
		duckduckgo = 'https://duckduckgo.com/?q=%s',
		wikipedia = 'https://en.wikipedia.org/w/index.php?search=%s',
	},
}

local function looks_like_url(input)
	local pat = '[%w%.%-_]+%.[%w%.%-_/]+'
	return input:match(pat) ~= nil
end

local function extract_prefix(input)
	local pat = '@(%w+)'
	local prefix = input:match(pat)
	if not prefix or not config.query_map[prefix] then
		return vim.trim(input), config.default_engine
	end
	local query = input:gsub('@' .. prefix, '')
	return vim.trim(query), prefix
end

local function query_browser(input)
	local q, prefix = extract_prefix(input)
	if not looks_like_url(input) then
		local format = config.query_map[prefix]
		q = format:format(vim.uri_encode(q))
	end
	vim.ui.open(q)
end

vim.keymap.set('n', '<C-S-;>', function()
	vim.ui.input({ prompt = 'Search: ' }, function(input)
		if input then
			query_browser(input)
		end
	end)
end)
