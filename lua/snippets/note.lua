local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

-- Insert current date in @YYYY-MM-DD format
local date = function()
	return '@' .. os.date '%Y-%m-%d'
end

return {
	s('note', {
		f(date, {}),
		t { '', '' },
		t '#',
		i(1, 'topic/subtopic'),
		t { '', '' },
		i(2, 'Your note goes here.'),
		t { '', '' },
		t 'tags: ',
		i(3, '@tag1 @tag2 @tag3'),
	}),
}
