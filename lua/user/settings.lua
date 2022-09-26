-- [[ neovim settings ]]
-- See :h options

local set = vim.opt

-- [[ General ]]

set.clipboard = "unnamedplus"           -- Uses system clipboard
set.encoding = "utf8"		                -- String encoding to use
set.fileencoding = "utf8"	              -- File encoding to use
set.mouse = "a"                         -- Mouse integration
set.showmode = false                    -- Hide (--INSERT--), (--VISUAL--) ; etc...
set.colorcolumn = "100"                 -- Show col for max line length
set.number = true		                    -- Show line numbers
set.relativenumber = true	              -- Show relative line numbers
set.scrolloff = 4		                    -- Min num lines of context
set.signcolumn = "yes"		              -- Show the sign column
set.syntax = "ON"		                    -- Allow syntax highlighting
set.termguicolors = true	              -- If term supports ui color then enable

-- Window
set.splitright = true		                -- Place new window to right of the current one
set.splitbelow = true		                -- Place a new window below the current one
set.wrap = false                        -- No text wrapping

-- Search
set.ignorecase = true		                -- Ignore case in search
set.smartcase = true		                -- Override ignorecase if search contains capitals

-- Files
set.expandtab = true		                -- Use spaces instead of tabs
set.shiftwidth = 2		                  -- Size of an indent
set.softtabstop = 2		                  -- Number of spaces tabs count for insert mode
set.tabstop = 2			                    -- Number of spaces tabs count for
