## echidna-mono.nvim

A monochrome variant of [echidna.nvim](https://github.com/2besita/echidna.nvim), originally created by 2besita.
The entire theme is built from just two colors.

### How to install
lazyvim:
```lua
return {
    "tichelmorres/echidna-mono.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        -- refer to default options table below
    }
}
```

vim.pack:
```lua
vim.pack.add({ "https://github.com/tichelmorres/echidna-mono.nvim" })

require("echidna-mono").setup({
    -- refer to default options table below
})
vim.cmd.colorscheme("echidna-mono")
```

### Usage
Call `setup` before loading. These are the defaults:
```lua
require("echidna-mono").setup({
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
})

vim.cmd.colorscheme("echidna-mono")
```

lualine: `theme = "echidna-mono"`

### Toggling transparency

This version of the theme ships a native `toggle_transparent()` function, which allows you to switch transparency at runtime. It flips the boolean `transparent` option and reloads the colorscheme.

You can bind it to a key.
```lua
vim.keymap.set("n", "<leader>ut", function()
    require("echidna-mono").toggle_transparent()
end, { desc = "Toggle transparency" })
```

Or create a command.
```lua
vim.api.nvim_create_user_command("ToggleTransparent", function()
    require("echidna-mono").toggle_transparent()
end, {})
```

### Ports
A `foot` terminal port is in `ports/foot`.

### Credits
Based on echidna.nvim (MIT).
