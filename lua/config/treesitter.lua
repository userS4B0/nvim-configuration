require('nvim-treesitter.configs').setup {
  ensure_installed = {
    "lua", 
    "bash", 
    "css", 
    "html", 
    "java", 
    "javascript", 
    "json", 
    "latex",
    "markdown", 
    "python", 
    "toml", 
    "yaml"
  },
  sync_install = true,
  auto_install = true,
  ignore_install = {},

  highlight = {
    enable = true,
    disable = {},  
  }
}
