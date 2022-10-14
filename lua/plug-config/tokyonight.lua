
-- Secure plugin config implementation
local status_ok, tokyonight = pcall(require, "tokyonight")

if not status_ok then
  vim.notify("Tokyonight plugin not found!", "ERROR")
  return
end

-- Plugin configuration
tokyonight.setup {
  style = "moon",
  styles = {
    comments = {italic = false},      -- Italics for comments
    keywords = {italic = false},      -- Italics for keywords
  },
  hide_inactive_statusline = true,    -- Hide inactive statuslines. Replace them with thin border
  dim_inactive = true,                -- dims inactive windows
  lualine_bold = true,                -- Section headers in the lualine theme will be bold
}
