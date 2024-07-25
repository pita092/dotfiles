require'nvim-treesitter.configs'.setup {
  ensure_installed = {"c", "cpp", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
  sync_install = false,
  auto_install = true,
  ignore_install = { "javascript" },
  highlight = {
    enable = true,
    },
  indent ={
   enable = true,
  }
}
