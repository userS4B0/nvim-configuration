-- [[ plugins.lua ]]

-- Get configuration files for plugins (allocated in config/)
-- Expects config filename
local function GetConfig(name)
  return string.format("require('plug-config/%s')", name)
end


-- Bootstraping packer
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({
      "git",
      "clone",
      "--depth",
      "1",
      "https://github.com/wbthomason/packer.nvim",
      install_path
    })
    print("Installing Packer...")
    vim.api.nvim_command("packadd packer.nvim")
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()


-- Initialize & configure packer
local status_ok, packer = pcall(require, "packer")

if not status_ok then
  vim.notify("Plugin manager error!", "ERROR")
  return
end

packer.init({
  enable = true,  -- Enable profiling
  threshold = 0,  -- Amount(ms) plugins load time must be over for it to be included in the profile
  max_jobs = nil, -- Limit number of simultaneous jobs.
  display = {     -- Have packer use a popup window
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
})

-- Plugins start
packer.startup(function(use)

  use {"wbthomason/packer.nvim"}                                    -- Plugin Manager

 -- [[ Theming ]] --------------------------------------------------------------------------------
  use {"folke/tokyonight.nvim",                                     -- Tokyo Night Theme
    config = GetConfig("tokyonight")
  }
  use {"shaunsingh/nord.nvim"}                                      -- Nord Theme
  use {"kyazdani42/nvim-web-devicons"}                              -- Icons
 -------------------------------------------------------------------------------------------------

 -- [[ General ]] --------------------------------------------------------------------------------
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
  use {"nvim-lualine/lualine.nvim",                                 -- Status Line
    requires = {"kyazdani42/nvim-web-devicons",opt = true},
    config = GetConfig("lualine")
  }
  use {"akinsho/bufferline.nvim", tag = "v2.*",                     -- Buffers & Tabs
    requires = {"kyazdani42/nvim-web-devicons",opt = true},
    config = GetConfig("bufferline")
  }
  use {"glepnir/dashboard-nvim",                                    -- Dashboard
    config = GetConfig("dashboard")
  }
 -------------------------------------------------------------------------------------------------

 -- [[ Development ]] ----------------------------------------------------------------------------
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
  use {
    "AmeerTaweel/todo.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = GetConfig("todo")
  }
  use {"aurum77/live-server.nvim",                                  -- Live server web development
    run = function()
      require"live_server.util".install()
    end,
    cmd = { "LiveServer","LiveServerStart","LiveServerStop" },
    config = GetConfig("live-server"),
  }
 -------------------------------------------------------------------------------------------------

 -- [[ Automatic setup ]] ------------------------------------------------------------------------
 if packer_bootstrap then require("packer").sync() end
 -------------------------------------------------------------------------------------------------
end)
