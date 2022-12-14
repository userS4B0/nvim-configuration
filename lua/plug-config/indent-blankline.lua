
-- Secure plugin config implementation
local status_ok, indent_blankline = pcall(require, "indent_blankline")

if not status_ok then
  vim.notify("Indent blankline plugin not loaded!", "ERROR")
  return
end


-- Plugin configuration
indent_blankline.setup {
  indentLine_enabled = 1,
  char = "▏",
  filetype_exclude = {
    "startify",
    "dashboard",
    "dotooagenda",
    "log",
    "fugitive",
    "gitcommit",
    "packer",
    "vimwiki",
    "markdown",
    "json",
    "txt",
    "vista",
    "help",
    "todoist",
    "NvimTree",
    "git",
    "TelescopePrompt",
    "undotree",
    "", -- for all buffers without a file type
  },
  buftype_exclude = { "terminal", "nofile" },
  show_trailing_blankline_indent = false,
  show_first_indent_level = true,
  show_current_context = true,
  char_list = { "|", "¦", "┆", "┊" },
  space_char = " ",
  context_patterns = {
    "class",
    "function",
    "method",
    "block",
    "list_literal",
    "selector",
    "^if",
    "^table",
    "if_statement",
    "while",
    "for",
  },
}
