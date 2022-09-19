-- [[ neovim settings ]]
local set = vim.opt
local cmd = vim.api.nvim_command

-- [[ General ]]

set.backup = false -- Creates a backup file
set.clipboard = "unnamedplus" -- uses system clipboard

-- [[ Context ]]
set.colorcolumn = "100"                 -- Show col for max line length
set.number = true		                    -- Show line numbers
set.relativenumber = true	              -- Show relative line numbers
set.scrolloff = 4		                    -- Min num lines of context
set.signcolumn = "yes"		              -- Show the sign column
set.mouse = "a"                         -- Mouse integration
set.cmdheight = 2 -- More space for nvim cli to display msgs
set.showmode = false -- Hide (--INSERT--), (--VISUAL--) ; etc...

-- [[ Filetypes ]]
set.encoding = "utf8"		                -- String encoding to use
set.fileencoding = "utf8"	              -- File encoding to use

-- [[ Theme ]]
set.syntax = "ON"		                    -- Allow syntax highlighting
set.termguicolors = true	              -- If term supports ui color then enable

-- cmd('colorscheme tokyonight-storm')  -- Tokyo Night Theme
cmd("colorscheme tokyonight-night")     -- Tokyo Night darker
-- cmd('colorscheme nord')              -- Nord Theme

-- [[ Search ]]
set.ignorecase = true		                -- Ignore case in search
set.smartcase = true		                -- Override ignorecase if search contains capitals
set.incsearch = true		                -- Use incremental search
set.hlsearch = true		                  -- Highlight search matches

-- [[ Whitespace ]]
set.expandtab = true		                -- Use spaces instead of tabs
set.shiftwidth = 2		                  -- Size of an indent
set.softtabstop = 2		                  -- Number of spaces tabs count for insert mode
set.tabstop = 2			                    -- Number of spaces tabs count for

-- [[ Splits ]]
set.splitright = true		                -- Place new window to right of the current one
set.splitbelow = true		                -- Place a new window below the current one

-- [[ Window ]]
set.wrap = false                        -- No text wrapping



-- :help options
vim.opt.backup = false                          -- creates a backup file
vim.opt.clipboard = "unnamedplus"               -- allows neovim to access the system clipboard
vim.opt.cmdheight = 2                           -- more space in the neovim command line for displaying messages
vim.opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp
vim.opt.conceallevel = 0                        -- so that `` is visible in markdown files
vim.opt.fileencoding = "utf-8"                  -- the encoding written to a file
vim.opt.hlsearch = true                         -- highlight all matches on previous search pattern
vim.opt.ignorecase = true                       -- ignore case in search patterns
vim.opt.mouse = "a"                             -- allow the mouse to be used in neovim
vim.opt.pumheight = 10                          -- pop up menu height
vim.opt.showmode = false                        -- we don't need to see things like -- INSERT -- anymore
vim.opt.showtabline = 2                         -- always show tabs
vim.opt.smartcase = true                        -- smart case
vim.opt.smartindent = true                      -- make indenting smarter again
vim.opt.splitbelow = true                       -- force all horizontal splits to go below current window
vim.opt.splitright = true                       -- force all vertical splits to go to the right of current window
vim.opt.swapfile = false                        -- creates a swapfile
-- vim.opt.termguicolors = true                    -- set term gui colors (most terminals support this)
vim.opt.timeoutlen = 1000                       -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.undofile = true                         -- enable persistent undo
vim.opt.updatetime = 300                        -- faster completion (4000ms default)
vim.opt.writebackup = false                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.expandtab = true                        -- convert tabs to spaces
vim.opt.shiftwidth = 2                          -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2                             -- insert 2 spaces for a tab
vim.opt.cursorline = true                       -- highlight the current line
vim.opt.number = true                           -- set numbered lines
vim.opt.relativenumber = false                  -- set relative numbered lines
vim.opt.numberwidth = 4                         -- set number column width to 2 {default 4}
vim.opt.signcolumn = "yes"                      -- always show the sign column, otherwise it would shift the text each time
vim.opt.wrap = false                            -- display lines as one long line
vim.opt.scrolloff = 8                           -- is one of my fav
vim.opt.sidescrolloff = 8
vim.opt.guifont = "monospace:h17"               -- the font used in graphical neovim applications

vim.opt.shortmess:append "c"

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work
