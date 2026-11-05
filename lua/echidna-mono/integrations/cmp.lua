local colorscheme = require('echidna-mono.colorscheme').pick()

local M = {}

function M.highlights()
  return {
    CmpItemAbbr = { fg = colorscheme.foreground },
    CmpItemAbbrDeprecated = { fg = colorscheme.foreground, strikethrough = true },
    CmpItemKind = { fg = colorscheme.foreground },
    CmpItemMenu = { fg = colorscheme.foreground },
    CmpItemAbbrMatch = { fg = colorscheme.foreground, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = colorscheme.foreground, bold = true },

    CmpItemKindSnippet = { fg = colorscheme.foreground },
    CmpItemKindKeyword = { fg = colorscheme.foreground },
    CmpItemKindText = { fg = colorscheme.foreground },
    CmpItemKindMethod = { fg = colorscheme.foreground },
    CmpItemKindConstructor = { fg = colorscheme.foreground },
    CmpItemKindFunction = { fg = colorscheme.foreground },
    CmpItemKindFolder = { fg = colorscheme.foreground },
    CmpItemKindModule = { fg = colorscheme.foreground },
    CmpItemKindConstant = { fg = colorscheme.foreground },
    CmpItemKindField = { fg = colorscheme.foreground },
    CmpItemKindProperty = { fg = colorscheme.foreground },
    CmpItemKindEnum = { fg = colorscheme.foreground },
    CmpItemKindUnit = { fg = colorscheme.foreground },
    CmpItemKindClass = { fg = colorscheme.foreground },
    CmpItemKindVariable = { fg = colorscheme.foreground },
    CmpItemKindFile = { fg = colorscheme.foreground },
    CmpItemKindInterface = { fg = colorscheme.foreground },
    CmpItemKindColor = { fg = colorscheme.foreground },
    CmpItemKindReference = { fg = colorscheme.foreground },
    CmpItemKindEnumMember = { fg = colorscheme.foreground },
    CmpItemKindStruct = { fg = colorscheme.foreground },
    CmpItemKindValue = { fg = colorscheme.foreground },
    CmpItemKindEvent = { fg = colorscheme.foreground },
    CmpItemKindOperator = { fg = colorscheme.foreground },
    CmpItemKindTypeParameter = { fg = colorscheme.foreground },
    CmpItemKindCopilot = { fg = colorscheme.foreground },
  }
end

return M
