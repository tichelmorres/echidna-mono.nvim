local config = {
    defaults = {
        transparent = false,
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

function config.extend(values)
    local merged = vim.tbl_deep_extend("force", config.defaults, values or {})
    for k, v in pairs(merged) do
        config[k] = v
    end
end

return config
