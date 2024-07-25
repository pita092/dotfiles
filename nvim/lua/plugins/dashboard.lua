return{
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup ({
      theme = "doom",
       hide = {
      statusline = false,},
      config = {
      header = {
[[BBBBBBBBBBBBBBBBB               AAA               LLLLLLLLLLL             LLLLLLLLLLL                SSSSSSSSSSSSSSS]],
[[B::::::::::::::::B             A:::A              L:::::::::L             L:::::::::L              SS:::::::::::::::S]],
[[B::::::BBBBBB:::::B           A:::::A             L:::::::::L             L:::::::::L             S:::::SSSSSS::::::S]],
[[BB:::::B     B:::::B         A:::::::A            LL:::::::LL             LL:::::::LL             S:::::S     SSSSSSS]],
  [[B::::B     B:::::B        A:::::::::A             L:::::L                 L:::::L               S:::::S            ]],
  [[B::::B     B:::::B       A:::::A:::::A            L:::::L                 L:::::L               S:::::S            ]],
  [[B::::BBBBBB:::::B       A:::::A A:::::A           L:::::L                 L:::::L                S::::SSSS         ]],
  [[B:::::::::::::BB       A:::::A   A:::::A          L:::::L                 L:::::L                 SS::::::SSSSS    ]],
  [[B::::BBBBBB:::::B     A:::::A     A:::::A         L:::::L                 L:::::L                   SSS::::::::SS  ]],
  [[B::::B     B:::::B   A:::::AAAAAAAAA:::::A        L:::::L                 L:::::L                      SSSSSS::::S ]],
  [[B::::B     B:::::B  A:::::::::::::::::::::A       L:::::L                 L:::::L                           S:::::S]],
  [[B::::B     B:::::B A:::::AAAAAAAAAAAAA:::::A      L:::::L         LLLLLL  L:::::L         LLLLLL            S:::::S]],
[[BB:::::BBBBBB::::::BA:::::A             A:::::A   LL:::::::LLLLLLLLL:::::LLL:::::::LLLLLLLLL:::::LSSSSSSS     S:::::S]],
[[B:::::::::::::::::BA:::::A               A:::::A  L::::::::::::::::::::::LL::::::::::::::::::::::LS::::::SSSSSS:::::S]],
[[B::::::::::::::::BA:::::A                 A:::::A L::::::::::::::::::::::LL::::::::::::::::::::::LS:::::::::::::::SS ]],
[[BBBBBBBBBBBBBBBBBAAAAAAA                   AAAAAAALLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL SSSSSSSSSSSSSSS   ]],	      
[[                                  :NEOVIM                                ]],
[[:https://github.com/pita092]],
[[]],
[[]],
[[]],
[[]],
[[]],
[[]],
          },

  center = {
    { action = "ene | startinsert",desc = " New File",icon = " ", key = "n" },
    { action = "Lazy",desc = " Lazy",icon = "󰒲 ", key = "l" },
    { action = "Telescope oldfiles", desc = " Old files",icon = " ", key = "o" },
    { action = function() vim.api.nvim_input("<cmd>qa<cr>") end, desc = " Quit",icon = " ", key = "q" },
              },
             footer = function()
             local stats = require("lazy").stats()
        local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
        return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
             end
          },
      })

  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}

