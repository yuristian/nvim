return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  opts = function()
    local logo = 
        [[ 
                                                             ...                                    
                                                      ..====----==.                                 
                                                    .:-...      ...=.                               
                                                    .:....         .+.                              
                              -:::::::::::::*.     .#.              .=                              
                             =:...........+..-     .*....-.:=+-.    .=                              
                            ..*====--:...+.#.=     .#.=...=...*.   ..-                              
                             .-..........=.::-.    .::..........   .-.                              
                              -..+==*##+..+.::.     .+=.:..*.     =...                              
                              .*.=... .-#.-.*.#.    .*:+.. .=...-%.                                 
                               ::-.   .=#.::.::.    .#...:+**=%...=                                 
                               .#.   ..+-..#.=.:    .#.    .:=-..+-:.                               
                               .+.   .:=...::=.-    .*.   .=...=.*.+.                               
                               .-.   .+======-..::...*...-..   =::.:.                               
                          .=+++*+=====-:....-...=:-*-+=+=----==+*=-======.                          
                              .-==-::::.............    .  .:---==-:....=.                          
                                                           ....                                     
    ]]

    logo = string.rep("\n", 4) .. logo .. string.rep("\n", 2)

    local opts = {
      theme = 'doom', -- Tema favorit banyak orang
      hide = {
        -- sembunyikan statusline dan tabline saat di dashboard
        statusline = false,
      },
      config = {
        header = vim.split(logo, "\n"),
        center = {
          { action = 'Telescope find_files',                               desc = ' Find File',       icon = ' ', key = 'f' },
          { action = 'ene | startinsert',                                  desc = ' New File',        icon = ' ', key = 'n' },
          { action = 'Telescope oldfiles',                                 desc = ' Recent Files',    icon = ' ', key = 'r' },
          { action = 'Telescope live_grep',                                desc = ' Find Text',       icon = ' ', key = 'g' },
          { action = 'Lazy',                                               desc = ' Lazy',             icon = '󰒲 ', key = 'l' },
          { action = 'qa',                                                 desc = ' Quit',             icon = ' ', key = 'q' },
        },
        footer = function()
          local stats = require("lazy").stats()
          local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
          return { "⚡ Neovim loaded " .. stats.count .. " plugins in " .. ms .. "ms" }
        end,
      },
    }

    return opts
  end,
}
