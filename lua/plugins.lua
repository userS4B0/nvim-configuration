-- [[ plug.lua ]]
return require('packer').startup(function(use)

  -- [[ General ]] ------------------------------------------------------------------------------
  
    -- Plugin Manager
  use {'wbthomason/packer.nvim'}

    -- Coments
  use {'tpope/vim-commentary'}
  
    -- File Tree
  use {'kyazdani42/nvim-tree.lua',
       requires = {'kyazdani42/nvim-web-devicons', opt = true}}
  

  -- [[ Theming ]] ------------------------------------------------------------------------------
  
    -- Theme
  use {'folke/tokyonight.nvim'}
  
    -- Dashboard
  use {'glepnir/dashboard-nvim', config = [[require('config.dashboard-nvim')]]}
    
    -- Status Line
  use {'nvim-lualine/lualine.nvim',
       requires = {'kyazdani42/nvim-web-devicons', opt = true},
       config = [[require('config.lualine')]]
  }
 
    -- Tabs & Buffers
  use {'akinsho/bufferline.nvim', 
       tag = "v2.*", 
       requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  
  -- [[ Development ]] --------------------------------------------------------------------------
    
    -- Autopairing characters (){}[]''""
  use {'windwp/nvim-autopairs'}                                 
  
    -- Better syntax highlighting
  use {'nvim-treesitter/nvim-treesitter'}
    
    -- Fuzzy file finder
  use {'nvim-telescope/telescope.nvim', 
       tag = '0.1.0',
       requires = {{'nvim-lua/plenary.nvim'}, 
                  {'kyazdani42/nvim-web-devicons', opt = true}
       }
  }

    -- Git integration
  use {'tpope/vim-fugitive'}

    -- Code completion
  -- use {'neoclide/coc.nvim'}  

end)
