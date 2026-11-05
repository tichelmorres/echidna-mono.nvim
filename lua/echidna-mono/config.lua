local config = {
    defaults = {
        italics = {
            comments = true,
            keywords = false,
            functions = false,
            strings = false,
            variables = false,
            bufferline = false,
        },
        overrides = {},
    },
}

setmetatable(config, { __index = config.defaults })

return config
