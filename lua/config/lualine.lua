vim.o.shortmess = vim.o.shortmess .. "S"

local function search_count()
  if vim.api.nvim_get_vvar("hlsearch") == 1 then
    local res = vim.fn.searchout({maxcount == 999, timeout = 500})
    if res.total > 0 then
      return string.format("%d/%d", res.current, res.total)
    end
  end
  return ""
end

local function getWords()
  if vim.bo.filetype == "md" or vim.bo.filetype == "txt" or vim.bo.filetype == "markdown" then
    if vim.fn.wordcount().visual_words == 1 then
      return tostring(vim.fn.wordcount().visual_words) .. " word"
    elseif not (vim.fn.wordcount().visual_words == nil) then
      return tostring(vim.fn.wordcount().words) .. " words"
    else
      return tostring(vim.fn.wordcount().words) .. " words"
    end
  else
    return ""
  end
end

local function getLines()
  return tostring(vim.api.nvim_win_get_cursor(0)[1]) .. "/" .. tostring(vim.api.nvim_buf_line_count(0))
end

local function getColumn()
  local val = vim.api.nvim_win_get_cursor(0)[2]
  return string.format("%03d", val) -- pad value 3 units to stop geometry shift
end

local function diff_source()
  local gitsigns = vim.b.gitsigns_status_dict
    if gistsigns then
      return {
        added = gitsigns.added,
        modified = gitsigns.modified,
        removed = gitsigns.removed
      }
    end
end

require("lualine").setup {
 
  options = {
    icons_enabled = true,
    theme = "tokyonight",
    -- theme = "nord",
    component_separators = "|",
    section_separators = {left = "", right = ""},
    disabled_filetypes = {}
  },

  sections = {
    
    lualine_a = {{
      "mode",
      fmt = function(res) return res:sub(1, 1) end,
      separator = {left = ""},
      right_padding = 2
    }},
    
    lualine_b = {
      {"branch", icon = ""}, 
      {
        "diff",
        source = diff_source,
        color_added = "#a7c080",
        color_modified = "#ffdf1b",
        color_removed = "#ff6666"
      }
    },
    
    lualine_c = {
      {"filename", path = 1, shorting_target = 40},
      {getWords, separator = {left = "", right = ""}}
    },
    
    lualine_x = {
      {search_count, type = "lua_expr"}, {"filetype", icon_only = true}
    },
    
    lualine_y = {"filetype"},
    
    lualine_z = {
      "progress",
      {getColumn, padding = {left = 1, right = 0}},
      {getLines, icon = "", padding = 1}
    }
  },
  
  inactive_sections = {
    
    lualine_a = {},
    
    lualine_b = {
      {
        "diff",
        source = diff_source,
        color_added = "#a7c080",
        color_modified = "#ffdf1b",
        color_removed = "#ff6666"
      }
    },
    
    lualine_c = {
      function() return "%=" end,
      {"filename", path = 1, shorting_target = 40}
    },
    
    lualine_x = {{getLines, icon = "", padding = 1}},
    
    lualine_y = {},
    
    lualine_z = {}
  },
  
  tabline = {},
  extensions = {"quickfix"}

}
