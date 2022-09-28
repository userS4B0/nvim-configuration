-- [[ keys.lua ]]

local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",


-- Normal --

-- Better window navigation
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
map("n", "<C-Up>", ":resize +2<CR>", opts)
map("n", "<C-Down>", ":resize -2<CR>", opts)
map("n", "<C-Left>", ":vertical resize +2<CR>", opts)
map("n", "<C-Right>", ":vertical resize -2<CR>", opts)

-- Buffers
map("n", "<S-l>", ":bnext<CR>", opts)
map("n", "<S-h>", ":bprevious<CR>", opts)
map("n", "<S-x>", ":bdelete<CR>", opts)

-- Toggle Nvimtree
map("n", "t", ":NvimTreeToggle<cr>", opts)

-- Toggle Telescope Fuzzy File finder
map("n", "<C-f>", ":Telescope find_files<CR>", opts)

-- Format Document (coc-prettier)
map("n", "<S-p>", ":CocCommand prettier.formatFile<CR>", opts)

