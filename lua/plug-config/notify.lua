local status_ok, notify = pcall(require("notify"))
if not status_ok then
  return
end

notify.setup({
  stages            = "fade_in_slide_out",  -- Animation style
  on_open           = nil,                  -- Func when new window is opened
  on_close          = nil,                  -- Func when window is closed
  render            = "default",            -- Render function for notifications. 
  timeout           = 5000,                 -- Default timeout
  background_colour = "#000000",            -- Notification background
  minimum_width     = 50,                   -- Minimum width for notification windows 
  icons = {                                 -- Icons for the different levels
    ERROR           = "",
    WARN            = "",
    INFO            = "",
    DEBUG           = "",
    TRACE           = "✎"
    }
})
vim.notify = require("notify")
