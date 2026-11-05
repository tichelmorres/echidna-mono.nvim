local bufferline = require("echidna-mono.integrations.bufferline")
local colorscheme_module = require("echidna-mono.colorscheme")
local ibl = require("echidna-mono.integrations.ibl")
local config = require("echidna-mono.config")
local theme = {}

local function set_terminal_colors(colorscheme)
    for i = 0, 15 do
        vim.g["terminal_color_" .. i] = colorscheme.foreground
    end

    vim.g.terminal_color_background = colorscheme.background
    vim.g.terminal_color_foreground = colorscheme.foreground
end

local function set_groups(colorscheme)
    local bg = colorscheme.background

    local groups = {
        SnacksBackdrop = { bg = colorscheme.background },
        SnacksNormal = { fg = colorscheme.foreground, bg = bg },
        SnacksNormalNC = { fg = colorscheme.foreground, bg = colorscheme.background },
        SnacksPicker = { fg = colorscheme.foreground, bg = colorscheme.background },
        SnacksPickerDir = { fg = colorscheme.foreground },
        red = { fg = colorscheme.foreground },
        SnacksPickerGitStatusUntracked = { fg = colorscheme.foreground },
        SnacksPickerDirectory = { fg = colorscheme.foreground },
        SnacksPickerBox = { fg = colorscheme.foreground, bg = colorscheme.background },

        Normal = { fg = colorscheme.foreground, bg = bg },
        LineNr = { fg = colorscheme.foreground },
        ColorColumn = { fg = colorscheme.background, bg = colorscheme.foreground },
        Conceal = {},
        Cursor = { fg = colorscheme.background, bg = colorscheme.foreground },
        lCursor = { link = "Cursor" },
        CursorIM = { link = "Cursor" },
        CursorLine = { bg = colorscheme.background },
        CursorColumn = { link = "CursorLine" },
        Directory = { fg = colorscheme.foreground },
        DiffAdd = { bg = bg, fg = colorscheme.foreground },
        DiffChange = { bg = bg, fg = colorscheme.foreground },
        DiffDelete = { bg = bg, fg = colorscheme.foreground },
        DiffText = { bg = bg, fg = colorscheme.foreground },
        EndOfBuffer = { fg = colorscheme.background },
        TermCursor = { link = "Cursor" },
        TermCursorNC = { link = "Cursor" },
        OkMsg = { fg = colorscheme.foreground },
        PreInsert = { fg = colorscheme.foreground },
        Added = { fg = colorscheme.foreground },
        ErrorMsg = { fg = colorscheme.foreground },
        VertSplit = { fg = colorscheme.foreground, bg = colorscheme.background },
        Winseparator = { fg = colorscheme.background, bg = colorscheme.background },
        SignColumn = { link = "Normal" },
        Folded = { fg = colorscheme.foreground, bg = colorscheme.background },
        FoldColumn = { link = "SignColumn" },
        IncSearch = { fg = colorscheme.background, bg = colorscheme.foreground, bold = true },
        Substitute = { link = "IncSearch" },
        CursorLineNr = { fg = colorscheme.foreground, bold = true, bg = colorscheme.background },
        MatchParen = { fg = colorscheme.background, bg = colorscheme.foreground },
        ModeMsg = { link = "Normal" },
        MsgArea = { link = "Normal" },
        MoreMsg = { fg = colorscheme.foreground },
        NonText = { fg = colorscheme.foreground },
        NormalFloat = { bg = colorscheme.background },
        FloatBorder = { fg = colorscheme.background, bg = colorscheme.background },
        FloatTitle = { fg = colorscheme.foreground, bg = colorscheme.background, bold = true },
        FloatFooter = { fg = colorscheme.foreground },
        NormalNC = { link = "Normal" },
        Pmenu = { link = "NormalFloat" },
        PmenuSel = { bg = colorscheme.background },
        PmenuSbar = { bg = colorscheme.background },
        PmenuThumb = { bg = colorscheme.foreground },
        Question = { fg = colorscheme.foreground },
        QuickFixLine = { fg = colorscheme.foreground },
        SpecialKey = { fg = colorscheme.foreground },
        StatusLine = { fg = colorscheme.foreground, bg = bg },
        StatusLineNC = {
            fg = colorscheme.foreground,
            bg = colorscheme.background,
        },
        WinBar = { fg = colorscheme.foreground, bg = bg },
        WinBarNC = { fg = colorscheme.foreground, bg = bg },
        TabLine = {
            bg = colorscheme.background,
            fg = colorscheme.foreground,
        },
        TabLineFill = { link = "TabLine" },
        TabLineSel = {
            bg = colorscheme.background,
            fg = colorscheme.foreground,
        },
        CurSearch = { fg = colorscheme.background, bg = colorscheme.foreground, bold = true },
        Search = { fg = colorscheme.background, bg = colorscheme.foreground },
        SpellBad = { undercurl = true, sp = colorscheme.foreground },
        SpellCap = { undercurl = true, sp = colorscheme.foreground },
        SpellLocal = { undercurl = true, sp = colorscheme.foreground },
        SpellRare = { undercurl = true, sp = colorscheme.foreground },
        Title = { fg = colorscheme.foreground, bold = true },
        Visual = { fg = colorscheme.background, bg = colorscheme.foreground },
        VisualNOS = { link = "Visual" },
        WarningMsg = { fg = colorscheme.foreground },
        Whitespace = { fg = colorscheme.foreground },
        WildMenu = { bg = colorscheme.background },
        Comment = {
            fg = colorscheme.foreground,
            italic = config.italics.comments or false,
        },

        String = {
            fg = colorscheme.foreground,
            italic = config.italics.strings or false,
        },
        Character = { fg = colorscheme.foreground },
        Number = { fg = colorscheme.foreground, bold = true },
        Boolean = { fg = colorscheme.foreground },
        Float = { link = "Number" },

        Identifier = { fg = colorscheme.foreground, italic = config.italics.variables or false },
        Function = { fg = colorscheme.foreground, italic = config.italics.functions or false },
        Method = { fg = colorscheme.foreground },
        Property = { fg = colorscheme.foreground },
        Field = { link = "Property" },
        Parameter = { fg = colorscheme.foreground },
        Statement = { fg = colorscheme.foreground },
        Conditional = { fg = colorscheme.foreground },
        Label = { fg = colorscheme.foreground },
        Operator = { fg = colorscheme.foreground },
        Keyword = { link = "Statement", italic = config.italics.keywords or false },
        Exception = { fg = colorscheme.foreground },
        Constant = { fg = colorscheme.foreground },

        PreProc = { link = "Keyword" },
        Define = { fg = colorscheme.foreground },
        Macro = { link = "Define" },
        PreCondit = { fg = colorscheme.foreground },

        Type = { fg = colorscheme.foreground },
        Struct = { link = "Type" },
        Class = { link = "Type" },

        Attribute = { link = "Character" },
        Punctuation = { fg = colorscheme.foreground },
        Special = { fg = colorscheme.foreground },

        SpecialChar = { fg = colorscheme.foreground },
        Tag = { fg = colorscheme.foreground },
        Delimiter = { fg = colorscheme.foreground },
        Debug = { fg = colorscheme.foreground },

        Underlined = { underline = true },
        Bold = { bold = true },
        Italic = { italic = true },
        Ignore = { fg = colorscheme.background },
        Error = { link = "ErrorMsg" },
        Todo = { fg = colorscheme.foreground, bold = true },

        Changed = { fg = colorscheme.foreground },
        Removed = { fg = colorscheme.foreground },

        DiagnosticOk = { fg = colorscheme.foreground },
        DiagnosticError = { link = "Error" },
        DiagnosticWarn = { link = "WarningMsg" },
        DiagnosticInfo = { fg = colorscheme.foreground },
        DiagnosticHint = { fg = colorscheme.foreground },
        DiagnosticVirtualTextError = { link = "DiagnosticError" },
        DiagnosticVirtualTextWarn = { link = "DiagnosticWarn" },
        DiagnosticVirtualTextInfo = { link = "DiagnosticInfo" },
        DiagnosticVirtualTextHint = { link = "DiagnosticHint" },
        DiagnosticUnderlineError = { undercurl = true, link = "DiagnosticError" },
        DiagnosticUnderlineWarn = { undercurl = true, link = "DiagnosticWarn" },
        DiagnosticUnderlineInfo = { undercurl = true, link = "DiagnosticInfo" },
        DiagnosticUnderlineHint = { undercurl = true, link = "DiagnosticHint" },
        DiagnosticDeprecated = { strikethrough = true, sp = colorscheme.foreground },
        DiagnosticUnderlineOk = { undercurl = true, sp = colorscheme.foreground },
        FloatShadow = { bg = colorscheme.background },
        FloatShadowThrough = { bg = colorscheme.background },
        RedrawDebugNormal = { fg = colorscheme.background, bg = colorscheme.foreground },
        RedrawDebugClear = { fg = colorscheme.background, bg = colorscheme.foreground },
        RedrawDebugComposed = { fg = colorscheme.background, bg = colorscheme.foreground },
        RedrawDebugRecompose = { fg = colorscheme.background, bg = colorscheme.foreground },
    }

    groups = vim.tbl_extend("force", groups, ibl.highlights(colorscheme) or {})
    groups = vim.tbl_extend("force", groups, bufferline.highlights(colorscheme, config) or {})

    groups = vim.tbl_extend(
        "force",
        groups,
        type(config.overrides) == "function" and config.overrides() or config.overrides or {}
    )

    for group, parameters in pairs(groups) do
        vim.api.nvim_set_hl(0, group, parameters)
    end
end

function theme.setup(values)
    config = vim.tbl_deep_extend("force", config.defaults, values or {})
end

function theme.colorscheme()
    if vim.fn.has("nvim-0.8") == 0 then
        vim.notify(
            "Neovim 0.8+ is required for echidna-mono colorscheme",
            vim.log.levels.ERROR,
            { title = "echidna-mono" }
        )
        return
    end

    vim.api.nvim_command("hi clear")
    if vim.fn.exists("syntax_on") then
        vim.api.nvim_command("syntax reset")
    end

    vim.g.VM_theme_set_by_colorscheme = true
    vim.o.termguicolors = true
    vim.g.colors_name = "echidna-mono"

    local colorscheme = colorscheme_module.pick()

    set_terminal_colors(colorscheme)
    set_groups(colorscheme)
end

return theme
