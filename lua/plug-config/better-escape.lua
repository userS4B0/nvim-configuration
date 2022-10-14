
-- Secure plugin config implementation
local status_ok, better_escape = pcall(require, "better_escape")

if not status_ok then
  vim.notify("Better Escape plugin not loaded!", "ERROR")
  return
end


-- Plugin configuration
better_escape.setup {

  mapping = {"jj", "kk"},
  timeout = vim.o.timeoutlen,
  clear_empty_lines = false,
  keys = "<Esc>"
}
