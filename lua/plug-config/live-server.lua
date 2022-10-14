
-- Secure plugin config implementation
local status_ok, live_server = pcall(require, "live_server")

if not status_ok then
  vim.notify("Live server plugin not loaded!", "ERROR")
  return
end

-- Plugin configuration
live_server.setup({
  port = 8080,
  browser_command = "", -- Starts up with default browser
  quiet = false,
})
