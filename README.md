# transparent.nvim
Make your neovim transparent

## Previews
<img width="1573" height="954" alt="image" src="https://github.com/user-attachments/assets/ce1c314b-daa3-492b-8edf-27fecae1f1f8" />

## Installation
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

