local M = {}

function M.highlights(colorscheme, config)
	local bg = config.transparent and "NONE" or colorscheme.background
	return {
		BufferLineBackground = { bg = bg },
		BufferLineBufferVisible = { fg = colorscheme.foreground, bg = bg },
		BufferLineBufferSelected = {
			fg = colorscheme.foreground,
			bg = colorscheme.background,
		},
		BufferLineDuplicate = {
			fg = colorscheme.foreground,
			bg = bg,
			italic = config.italics.bufferline or false,
		},
		BufferLineDuplicateVisible = {
			fg = colorscheme.foreground,
			bg = bg,
			italic = config.italics.bufferline or false,
		},
		BufferLineDuplicateSelected = {
			fg = colorscheme.foreground,
			bg = colorscheme.background,
			italic = config.italics.bufferline or false,
		},

		BufferLineTab = { fg = colorscheme.foreground, bg = bg },
		BufferLineTabSelected = {
			fg = colorscheme.foreground,
			bg = colorscheme.background,
		},
		BufferLineTabClose = { fg = colorscheme.foreground, bg = bg },
		BufferLineIndicatorSelected = {
			fg = colorscheme.foreground,
			bg = colorscheme.background,
			bold = true,
		},

		BufferLineSeparator = { fg = colorscheme.background, bg = bg },
		BufferLineSeparatorSelected = {
			fg = colorscheme.background,
			bg = colorscheme.background,
		},
		BufferLineSeparatorVisible = { fg = colorscheme.background, bg = bg },
		BufferLineOffsetSeparator = { fg = colorscheme.background, bg = bg },
		BufferLineTabSeparator = { fg = colorscheme.background, bg = bg },
		BufferLineTabSeparatorSelected = {
			fg = colorscheme.background,
			bg = colorscheme.background,
		},

		BufferLineCloseButton = { fg = colorscheme.foreground, bg = bg },
		BufferLineCloseButtonVisible = { fg = colorscheme.foreground, bg = bg },
		BufferLineCloseButtonSelected = {
			fg = colorscheme.foreground,
			bg = colorscheme.background,
		},

		BufferLineFill = { bg = bg },

		BufferLineNumbers = { fg = colorscheme.foreground, bg = bg },
		BufferLineNumbersVisible = { fg = colorscheme.foreground, bg = bg },
		BufferLineNumbersSelected = {
			fg = colorscheme.foreground,
			bg = colorscheme.background,
			italic = config.italics.bufferline or false,
		},

		BufferLineError = { fg = colorscheme.foreground, bg = bg },
		BufferLineErrorVisible = { fg = colorscheme.foreground, bg = bg },
		BufferLineErrorSelected = {
			fg = colorscheme.foreground,
			bg = colorscheme.background,
			italic = config.italics.bufferline or false,
		},
		BufferLineErrorDiagnostic = { fg = colorscheme.foreground, bg = bg },
		BufferLineErrorDiagnosticVisible = { fg = colorscheme.foreground, bg = bg },
		BufferLineErrorDiagnosticSelected = {
			fg = colorscheme.foreground,
			bg = colorscheme.background,
		},

		BufferLineWarning = { fg = colorscheme.foreground, bg = bg },
		BufferLineWarningVisible = { fg = colorscheme.foreground, bg = bg },
		BufferLineWarningSelected = {
			fg = colorscheme.foreground,
			bg = colorscheme.background,
			italic = config.italics.bufferline or false,
		},
		BufferLineWarningDiagnostic = { fg = colorscheme.foreground, bg = bg },
		BufferLineWarningDiagnosticVisible = { fg = colorscheme.foreground, bg = bg },
		BufferLineWarningDiagnosticSelected = {
			fg = colorscheme.foreground,
			bg = colorscheme.background,
		},

		BufferLineInfo = { fg = colorscheme.foreground, bg = bg },
		BufferLineInfoVisible = { fg = colorscheme.foreground, bg = bg },
		BufferLineInfoSelected = {
			fg = colorscheme.foreground,
			bg = colorscheme.background,
			italic = config.italics.bufferline or false,
		},
		BufferLineInfoDiagnostic = { fg = colorscheme.foreground, bg = bg },
		BufferLineInfoDiagnosticVisible = { fg = colorscheme.foreground, bg = bg },
		BufferLineInfoDiagnosticSelected = {
			fg = colorscheme.foreground,
			bg = colorscheme.background,
		},

		BufferLineHint = { fg = colorscheme.foreground, bg = bg },
		BufferLineHintVisible = { fg = colorscheme.foreground, bg = bg },
		BufferLineHintSelected = {
			fg = colorscheme.foreground,
			bg = colorscheme.background,
			italic = config.italics.bufferline or false,
		},
		BufferLineHintDiagnostic = { fg = colorscheme.foreground, bg = bg },
		BufferLineHintDiagnosticVisible = { fg = colorscheme.foreground, bg = bg },
		BufferLineHintDiagnosticSelected = {
			fg = colorscheme.foreground,
			bg = colorscheme.background,
		},

		BufferLineDiagnostic = { fg = colorscheme.foreground, bg = bg },
		BufferLineDiagnosticVisible = { fg = colorscheme.foreground, bg = bg },
		BufferLineDiagnosticSelected = {
			fg = colorscheme.foreground,
			bg = colorscheme.background,
			italic = config.italics.bufferline or false,
		},

		BufferLineModified = { fg = colorscheme.foreground, bg = bg },
		BufferLineModifiedSelected = {
			fg = colorscheme.foreground,
			bg = colorscheme.background,
		},
	}
end

return M
