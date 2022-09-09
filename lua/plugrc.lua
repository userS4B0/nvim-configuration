require('config.lualine')
require('config.luatree')
require('config.autopairs')
require('config.bufferline')
require('config.treesitter')
require('telescope')
require('config.better-escape')
require('config.wilder')

-- Autocompile Plugin manager
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
