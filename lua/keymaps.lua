
-- [[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- General keybindings

--- Plugin keybindings

-- Toggle nvim-tree
map('n', 't', [[:NvimTreeToggle]], {})

-- BufferLine
map('n', '.', [[:BufferLineCycleNext]], {})
map('n', ',', [[:BufferLineCyclePrev]], {})
