-- [[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- General keybindings

--- Plugin keybindings

-- BufferLine
map('n', '.', [[:BufferLineCycleNext]], {})
map('n', ',', [[:BufferLineCyclePrev]], {})
