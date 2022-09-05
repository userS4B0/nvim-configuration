require('bufferline').setup {
  options = {
    indicator = {
      icon = '▎',
      style = 'icon',
    },  
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    tab_size = 15,
    color_icons = true,
    show_buffer_icons = true,
    show_buffer_close_icons = true,
    show_buffer_default_icon = true,
    show_close_icon = true,
    show_tab_indicators = false,
    separator_style = 'padded_slant',
    sort_by = 'directory',
    offsets = {
      filetype = "NvimTree",
      text = "File Eplorer",
      highlight = "Directory",
      separator = true
    }
  }
}
