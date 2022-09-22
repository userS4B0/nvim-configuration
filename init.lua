
-- INIT.LUA

-- LEADER
vim.g.mapleader = ","
vim.g.localleader = "\\"

-- IMPORTS
require("vars")     -- Variables
require("settings") -- Options
require("keymaps")  -- Keymaps
require("plugins")  -- Plugins

-- Autocompile Plugin manager
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

-- Autoinstall missing plugins when starting vim
vim.cmd([[PackerInstall]])
