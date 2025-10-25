# transparent.nvim
Make your neovim transparent

## Previews
<img width="1577" height="962" alt="image" src="https://github.com/user-attachments/assets/f8d841bc-3ad9-4f76-b96f-79877713ecd6" />

## Installation
<img width="1573" height="954" alt="image" src="https://github.com/user-attachments/assets/ce1c314b-daa3-492b-8edf-27fecae1f1f8" />

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

