local status_ok, better_escape = pcall(require, "better-escape")
if not status_ok then
  return
end

require('better_escape').setup {
  mapping = {'jj', 'kk'},
  timeout = vim.o.timeoutlen,
  clear_empty_lines = false,
  keys = '<Esc>'
}
