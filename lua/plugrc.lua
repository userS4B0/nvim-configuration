-- require('config.dashboard-nvim')
require('config.lualine')
require('config.nvim-tree')
require('nvim-autopairs').setup {}
require('config.bufferline')
require('config.nvim-treesitter')
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
