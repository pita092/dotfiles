return {
  {
        "dfendr/fenbox",
        lazy = false,
        priority = 1001, -- make sure to load this before all the other start plugins
        config = function()
            vim.o.termguicolors = false
            vim.g.fenbox_background_color = "light"
            vim.g.fenbox_telescope_theme = false
            vim.g.fenbox_transparent_mode = false
            vim.g.fenbox_comment_style = { "italic" }
            vim.g.fenbox_function_style = { "bold" }
            vim.g.fenbox_keyword_style = "NONE"
            vim.g.fenbox_use_gruvboxbaby_palette = false

            local colorscheme = "fenbox"
            local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
            if not status_ok then
                vim.notify("colorscheme " .. colorscheme .. " not found!")
                return
            end
        end,
    },
}
