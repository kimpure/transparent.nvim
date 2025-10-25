# transparent.nvim
Make your neovim transparent

## Previews
<img width="1577" height="962" alt="image" src="https://github.com/user-attachments/assets/f8d841bc-3ad9-4f76-b96f-79877713ecd6" />

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

