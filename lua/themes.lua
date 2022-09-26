-- Installed themes (plugins.lua)

local set_theme = function(theme)
  local cmd = vim.api.nvim_command
  local selected_theme = string.format("colorscheme %s", theme)

  return cmd(selected_theme)
end

local tokyo_night = pcall(require, "tokyonight")
local nord = pcall(require, "nord")

if not tokyo_night or not nord then
  return
end

-- set_theme("tokyonight")          -- Tokyo Night Theme
-- set_theme("tokyonight-night")    -- Tokyo Night darker
set_theme("tokyonight-moon")     -- Tokyo Night darker less
-- set_theme("nord")                -- Nord Theme
