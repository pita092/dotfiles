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
[[=================     ===============     ===============   ========  ========]],
[[\\ . . . . . . .\\   //. . . . . . .\\   //. . . . . . .\\  \\. . .\\// . . //]],
[[||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\/ . . .||]],
[[|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||]],
[[||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||]],
[[|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\ . . . . ||]],
[[||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\_ . .|. .||]],
[[|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\ `-_/| . ||]],
[[||_-' ||  .|/    || ||    \|.  || `-_|| ||_-' ||  .|/    || ||   | \  / |-_.||]],
[[||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \  / |  `||]],
[[||    `'         || ||         `'    || ||    `'         || ||   | \  / |   ||]],
[[||            .===' `===.         .==='.`===.         .===' /==. |  \/  |   ||]],
[[||         .=='   \_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \/  |   ||]],
[[||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \/  |   ||]],
[[||   .=='    _-'          '-__\._-'         '-_./__-'         `' |. /|  |   ||]],
[[||.=='    _-'                                                     `' |  /==.||]],
[[=='    _-'                        N E O V I M                         \/   `==]],
[[\   _-'                                                                `-_   /]],
[[ `''                                                                      ``']],
[[]],
[[   :https://github.com/pita092]],
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

