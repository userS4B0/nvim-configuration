--[[ INIT.LUA ]] 

-- LEADER
vim.g.mapleader = ","
vim.g.localleader = "\\"

-- IMPORTS
require('vars')     -- Variables
require('settings') -- Options
require('keymaps')  -- Keymaps
require('plugins')  -- Plugins
require('plugrc')   -- Loaded Plugins
