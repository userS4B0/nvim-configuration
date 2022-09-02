require('nvim-tree').setup {
    open_on_setup = true,
    sort_by = 'case_sensitive',
    view = {
        adaptive_size = true,
        hide_root_folder = true,
        side = 'right',
        mappings = {list = {{key = "u", action = "dir_up"}}}

    },
    renderer = {
        group_empty = true,
        highlight_git = true,
        highlight_opened_files = 'all',
        indent_markers = {enable = true},
        icons = {
            glyphs = {
                folder = {
                    default = '',
                    open = '',
                    empty = '',
                    empty_open = '',
                    symlink = '',
                    symlink_open = ''
                }
            }
        }
    },
    filters = {dotfiles = true}
}

