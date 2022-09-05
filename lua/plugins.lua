-- [[ plug.lua ]]
return require('packer').startup(function(use)

    -- [[ General ]]
    use {'wbthomason/packer.nvim'}
    use {'tpope/vim-commentary'}

    use {
        'kyazdani42/nvim-tree.lua',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    
    -- [[ Theming ]]
    use {
        'glepnir/dashboard-nvim',
        config = [[require('config.dashboard-nvim')]]
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true},
        config = [[require('config.lualine')]]
    }
    use {'folke/tokyonight.nvim'}

    use {
        'akinsho/bufferline.nvim',
        tag = "v2.*",
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    -- [[ Development ]]
    use {'windwp/nvim-autopairs'}
    use {'nvim-treesitter/nvim-treesitter'}
    
    use {
      'nvim-telescope/telescope.nvim', 
      tag = '0.1.0',
      requires = {
        {'nvim-lua/plenary.nvim'},
        {'kyazdani42/nvim-web-devicons', opt = true}
      }
    }
end)

