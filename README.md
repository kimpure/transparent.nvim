# transparent.nvim
Make your neovim transparent

## Previews

## Installation
[lazy.nvim](https://github.com/folke/lazy.nvim)
```lua
return {
    "kimpure/transparent.nvim",
    opts = {
        groups = {
            -- Things you want to make transparent
            "Normal",
		    "Comment",
        },
        toggle = true,
    },
}
```

