require'nvim-treesitter.configs'.setup {

    ensure_installed = {
        "lua", "bash", "css", "html", "java", "javascript", "json", "latex",
        "markdown", "python", "toml", "yaml"
    },

    sync_install = false,
    auto_install = false,
    ignore_install = {},

    highlight = {
        enable = true,
        disable = {},
        additional_vim_regex_highlighting = false
    }
}
