local colorscheme = require("echidna-mono.colorscheme").pick()
local config = require("echidna-mono.config")

local bg = colorscheme.background
local fg = colorscheme.foreground
local bar_bg = config.transparent and "NONE" or bg

local function mode()
    return {
        a = { bg = fg,     fg = bg },
        b = { bg = bar_bg, fg = fg },
        c = { bg = bar_bg, fg = fg },
        x = { bg = bar_bg, fg = fg },
        y = { bg = bar_bg, fg = fg },
        z = { bg = bar_bg, fg = fg },
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
        a = { bg = bar_bg, fg = fg },
        b = { bg = bar_bg, fg = fg },
        c = { bg = bar_bg, fg = fg },
        x = { bg = bar_bg, fg = fg },
        y = { bg = bar_bg, fg = fg },
        z = { bg = bar_bg, fg = fg },
    },
}

return M
