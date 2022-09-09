-- [[ plugins.lua ]]

-- Get configuration files for plugins (allocated in config/)
function get_config(name)
  return string.format('require("config/%s")', name)
end

-- Plugins start
return require('packer').startup(function(use)

  -- [[ General ]] ------------------------------------------------------------------------------
  
    -- Plugin Manager
  use {'wbthomason/packer.nvim'}
  
    -- File Tree
  use {'kyazdani42/nvim-tree.lua', requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = get_config('luatree')    
  }
  
    -- Better escape insert mode 
  use {'max397574/better-escape.nvim', config = get_config('better-escape')}
    
    -- Command Line autocompletion
  use {'gelguy/wilder.nvim', config = get_config('wilder')}  
    
  -- [[ Theming ]] ------------------------------------------------------------------------------
  
    -- Themes
  use {'folke/tokyonight.nvim'}
  use {'shaunsingh/nord.nvim'}

    -- Icons
  use {'kyazdani42/nvim-web-devicons'}
  
    -- Dashboard
  use {'glepnir/dashboard-nvim', config = get_config('dashboard')}

  -- Status Line
  use {'nvim-lualine/lualine.nvim',
       requires = {'kyazdani42/nvim-web-devicons', opt = true},
       config = get_config('lualine')
  }
 
    -- Tabs & Buffers
  use {'akinsho/bufferline.nvim', 
       tag = "v2.*", 
       requires = {'kyazdani42/nvim-web-devicons', opt = true},
       config = get_config('bufferline')
  }

  
  -- [[ Development ]] --------------------------------------------------------------------------
    
    -- Autopairing characters (){}[]''""
  use {"windwp/nvim-autopairs", config = get_config("autopairs")}                                 

    -- Coments
  use {'tpope/vim-commentary'}

    -- Better syntax highlighting
  use {'nvim-treesitter/nvim-treesitter', config = get_config('treesitter')}
    
    -- Fuzzy file finder
  use {'nvim-telescope/telescope.nvim', 
       tag = '0.1.0',
       requires = {{'nvim-lua/plenary.nvim'}, 
                  {'kyazdani42/nvim-web-devicons', opt = true}
       }
  }

    -- Git integration
  use {"tpope/vim-fugitive"}
    
    -- Conqueror of completion
  use {
    "neoclide/coc.nvim", 
    branch = "release", 
    requires = {
      {"fannheyward/coc-markdownlint"},
      {"neoclide/coc-css"},
      {"fannheyward/coc-pyright"},
    }
  }
end)
