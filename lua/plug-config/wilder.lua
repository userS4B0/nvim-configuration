
-- Secure plugin config implementation
local status_ok, wilder = pcall(require, "wilder")

if not status_ok then
  vim.notify("Wilder plugin not found!", "ERROR")
  return
end


-- Plugin configuration
wilder.setup({modes = {':', '/', '?'}})


local highlighters = {
  wilder.pcre2_highlighter(), 
  wilder.lua_fzy_highlighter()
}


local popupmenu_renderer = wilder.popupmenu_renderer(
  wilder.popupmenu_border_theme({
    border = 'rounded',
    empty_message = wilder.popupmenu_empty_message_with_spinner(),
    highlighter = highlighters,
    min_width = "100%",
    max_height = "30%",
    left = {
      ' ', 
      wilder.popupmenu_devicons(), 
      wilder.popupmenu_buffer_flags({
        flags = ' a + ',
        icons = {['+'] = '', a = '', h = ''}
      })
    },
    right = {' ', wilder.popupmenu_scrollbar()}
  })
)


local wildmenu_renderer = wilder.wildmenu_renderer({
  highlighter = highlighters,
  separator = ' · ',
  left = {' ', wilder.wildmenu_spinner(), ' '},
  right = {' ', wilder.wildmenu_index()}
})


wilder.set_option('renderer', wilder.renderer_mux({
    [':'] = popupmenu_renderer,
    ['/'] = popupmenu_renderer,
    substitute = wildmenu_renderer
}))
