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
}
```

#### Usage
```lua
vim.cmd.colorscheme("echidna-mono")
```

lualine: `theme = "echidna-mono"`

### Ports
A `foot` terminal port is in `ports/foot`.

### Credits
Based on echidna.nvim (MIT).
