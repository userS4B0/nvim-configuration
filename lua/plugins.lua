-- [[ plugins.lua ]]

-- Get configuration files for plugins (allocated in config/)
function GetConfig(name)
  return string.format("require('config/%s')", name)
end

-- Plugins start
return require("packer").startup(function(use)


 -- [[ General ]] --------------------------------------------------------------------------------
  use {"wbthomason/packer.nvim"}                                    -- Plugin Manager
  use {"kyazdani42/nvim-tree.lua",                                  -- File Explorer (Tree)
    requires = {"kyazdani42/nvim-web-devicons", opt = true},
    config = GetConfig("luatree")
  }
  use {"max397574/better-escape.nvim",                              -- Better escape insert mode
    config = GetConfig("better-escape")
  }
  use {"gelguy/wilder.nvim",                                        -- Command Line autocompletion
    config = GetConfig("wilder")
  }
  use {"lukas-reineke/indent-blankline.nvim",                       -- Differenciate spaces
    config = GetConfig("indent-blankline")
  }
  use {"rcarriga/nvim-notify"}                                      -- Notifications
 -------------------------------------------------------------------------------------------------

 -- [[ Theming ]] --------------------------------------------------------------------------------
  use {"folke/tokyonight.nvim"}                                     -- Tokyo Night Theme
  use {"shaunsingh/nord.nvim"}                                      -- Nord Theme
  use {"kyazdani42/nvim-web-devicons"}                              -- Icons
  use {"glepnir/dashboard-nvim",                                    -- Dashboard
    config = GetConfig("dashboard")
  }
  use {"nvim-lualine/lualine.nvim",                                 -- Status Line
    requires = {"kyazdani42/nvim-web-devicons",opt = true},
    config = GetConfig("lualine")
  }
  use {'akinsho/bufferline.nvim', tag = "v2.*",                     -- Buffers & Tabs
    requires = {'kyazdani42/nvim-web-devicons',opt = true},
    config = GetConfig('bufferline')
  }
 -------------------------------------------------------------------------------------------------

 -- [[ Development ]] ----------------------------------------------------------------------------
  use {"windwp/nvim-autopairs",                                     -- Autopairing
    config = GetConfig("autopairs")
  }
  use {"tpope/vim-commentary"}                                      -- Comment Shortcuts
  use {"nvim-treesitter/nvim-treesitter",                           -- Better Syntax Highlighter
    config = GetConfig("treesitter")
  }
  use {"nvim-telescope/telescope.nvim", tag = "0.1.0",              -- Fuzzy File Finder
    requires = {
      {"nvim-lua/plenary.nvim"},
      {"kyazdani42/nvim-web-devicons", opt = true}
    }
  }
  use {"tpope/vim-fugitive"}                                        -- Git Integration
  use {"neoclide/coc.nvim", branch = "release"}                     -- Conqueror of completion
 -------------------------------------------------------------------------------------------------
end)
