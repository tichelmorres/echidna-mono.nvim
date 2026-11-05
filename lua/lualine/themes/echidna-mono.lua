local colorscheme = require("echidna-mono.colorscheme").pick()

local bg = colorscheme.background
local fg = colorscheme.foreground

local function mode()
	return {
		a = { bg = fg, fg = bg },
		b = { bg = bg, fg = fg },
		c = { bg = bg, fg = fg },
		x = { bg = bg, fg = fg },
		y = { bg = bg, fg = fg },
		z = { bg = bg, fg = fg },
	}
end

local M = {
	normal = mode(),
	insert = mode(),
	terminal = mode(),
	command = mode(),
	visual = mode(),
	replace = mode(),
	inactive = {
		a = { bg = bg, fg = fg },
		b = { bg = bg, fg = fg },
		c = { bg = bg, fg = fg },
		x = { bg = bg, fg = fg },
		y = { bg = bg, fg = fg },
		z = { bg = bg, fg = fg },
	},
}

return M
