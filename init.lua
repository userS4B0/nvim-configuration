
-- INIT.LUA

-- LEADER
vim.g.mapleader = ","
vim.g.localleader = "\\"

-- IMPORTS
require("vars")     -- Variables
require("settings") -- Options
require("keymaps")  -- Keymaps
require("plugins")  -- Plugins
require("themes")   -- Themes

-- Autocompile Plugin manager
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
