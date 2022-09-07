-- [[ neovim settings ]]
local set = vim.opt
local cmd = vim.api.nvim_command

-- [[ Context ]]
set.colorcolumn = '100'           -- Show col for max line length
set.number = true		              -- Show line numbers
set.relativenumber = true	        -- Show relative line numbers
set.scrolloff = 4		              -- Min num lines of context
set.signcolumn = "yes"		        -- Show the sign column
set.mouse = 'a'                   -- Mouse integration

-- [[ Filetypes ]]
set.encoding = 'utf8'		          -- String encoding to use
set.fileencoding = 'utf8'	        -- File encoding to use

-- [[ Theme ]]
set.syntax = "ON"		              -- Allow syntax highlighting
set.termguicolors = true	        -- If term supports ui color then enable

-- cmd('colorscheme tokyonight-storm')     -- Tokyo Night Theme
cmd("colorscheme tokyonight-night")     -- Tokyo Night darker 
-- cmd('colorscheme nord')                 -- Nord Theme

-- [[ Search ]]
set.ignorecase = true		          -- Ignore case in search
set.smartcase = true		          -- Override ignorecase if search contains capitals
set.incsearch = true		          -- Use incremental search
set.hlsearch = true		            -- Highlight search matches

-- [[ Whitespace ]]
set.expandtab = true		          -- Use spaces instead of tabs
set.shiftwidth = 2		            -- Size of an indent
set.softtabstop = 2		            -- Number of spaces tabs count for insert mode
set.tabstop = 2			              -- Number of spaces tabs count for

-- [[ Splits ]]
set.splitright = true		          -- Place new window to right of the current one
set.splitbelow = true		          -- Place a new window below the current one

-- [[ Window ]]
set.wrap = false                  -- No text wrapping
