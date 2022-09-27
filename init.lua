
-- INIT.LUA
local cmd = vim.cmd
-- LEADER
vim.g.mapleader = ","
vim.g.localleader = "\\"

-- IMPORTS
require("vars")             -- Variables
require("user/settings")    -- Options
require("user/keymaps")     -- Keymaps
require("plug")             -- Plugins
require("colorschemes")     -- Colorschemes

-- Autocompile Plugin manager
cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plug.lua source <afile> | PackerSync
  augroup end
]])
