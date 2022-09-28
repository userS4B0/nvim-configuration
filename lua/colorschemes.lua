-- Colorschemes

-- local colorscheme = "tokyonight"         -- Tokyo Night Default
-- local colorscheme = "tokyonight-night"   -- Tokyo Night Darker
local colorscheme = "tokyonight-moon"       -- Tokyo Night Dark
-- local colorscheme = "nord"               -- Nord
-- local colorscheme = "test"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not status_ok then
  vim.notify("Colorscheme " .. colorscheme .. " not found!", "ERROR")
  return
end
