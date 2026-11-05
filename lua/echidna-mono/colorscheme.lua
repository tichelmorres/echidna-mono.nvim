local p = {
	background = "#212020",
	foreground = "#f2f2f2",
}

local M = {}

function M.pick()
	return {
		background = p.background,
		foreground = p.foreground,
	}
end

return M
