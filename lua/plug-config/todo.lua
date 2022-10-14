
-- Secure plugin config implementation
local status_ok, todo = pcall(require, "todo")

if not status_ok then
  vim.notify("Todo plugin not found!", "ERROR")
  return
end


-- Plugin configuration
todo.setup {
  signs = {
    enable = true, -- show icons in the sign column
    priority = 8
  },
  keywords = {
    FIX = {icon = " ", color = "error", alt = {"FIXME", "BUG", "FIXIT", "ISSUE"}},
    TODO = {icon = " ", color = "info"},
    WARN = {icon = " ", color = "warning", alt = {"WARNING"}},
    NOTE = {icon = " ", color = "hint", alt = {"INFO"}}
  },
  merge_keywords = true,
  highlight = {
    before = "",
    keyword = "wide",
    after = "fg",
    pattern = [[.*<(KEYWORDS)\s*:]],
    comments_only = true, -- highlight only inside comments using treesitter
    max_line_len = 400, -- ignore lines longer than this
    exclude = {} -- list of file types to exclude highlighting
  },
  colors = {
    error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
    warning = { "DiagnosticWarn", "WarningMsg", "#FBBF24" },
    info = { "DiagnosticInfo", "#2563EB" },
    hint = { "DiagnosticHint", "#10B981" },
    default = { "Identifier", "#7C3AED" }
  },
  search = {
    -- don't replace the (KEYWORDS) placeholder
    pattern = [[\b(KEYWORDS):]] -- ripgrep regex
  }
}
