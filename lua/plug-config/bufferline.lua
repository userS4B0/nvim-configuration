
-- Secure plugin config implementation
local status_ok, bufferline = pcall(require, "bufferline")

if not status_ok then
  vim.notify("Bufferline plugin not loaded!", "ERROR")
  return
end


-- Plugin configuration
bufferline.setup {
  options = {
    numbers = "none",
    close_command = "bdelete! %d",
    right_mouse_command = "bdelete! %d",
    left_mouse_command = "buffer %d",
    middle_mouse_command = nil,
    indicator = {
      icon = '▎', -- this should be omitted if indicator style is not 'icon'
      style = 'icon'
    },
    buffer_close_icon = "",
    modified_icon = "●",
    close_icon = "",
    left_trunc_marker = "",
    right_trunc_marker = "",
    max_name_length = 30,
    max_prefix_length = 30,    
    tab_size = 21,
    diagnostics = "coc",
    diagnostics_update_in_insert = true,
    offsets = {{
      filetype = "NvimTree",
      text = " פּ File Explorer",
      text_align = "center",
      separator = true,
    }},
    show_buffer_icons = false,
    show_buffer_close_icons = true,
    show_close_icon = true,
    show_tab_indicators = true,
    persist_buffer_sort = true,
    separator_style = "thin",
    enforce_regular_tabs = true,
    always_show_bufferline = true,
  },
}
