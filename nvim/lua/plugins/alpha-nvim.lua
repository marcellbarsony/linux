-- Alpha-nvim
-- https://github.com/goolord/alpha-nvim

local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
  -- {{{ Blinky
  -- "            ██████            ",
  -- "        ████▒▒▒▒▒▒████        ",
  -- "      ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒██      ",
  -- "    ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██    ",
  -- "  ██▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒      ",
  -- "  ██▒▒▒▒▒▒  ▒▒▓▓▒▒▒▒▒▒  ▓▓▓▓  ",
  -- "  ██▒▒▒▒▒▒  ▒▒▓▓▒▒▒▒▒▒  ▒▒▓▓  ",
  -- "██▒▒▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒    ██",
  -- "██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██",
  -- "██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██",
  -- "██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██",
  -- "██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██",
  -- "██▒▒██▒▒▒▒▒▒██▒▒▒▒▒▒▒▒██▒▒▒▒██",
  -- "████  ██▒▒██  ██▒▒▒▒██  ██▒▒██",
  -- "██      ██      ████      ████",
  -- }}}

  -- {{{ Blinky + Pacman
  -- "            ██████                                  ██████                      ",
  -- "        ████▒▒▒▒▒▒████                          ████▒▒▒▒▒▒████                  ",
  -- "      ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                      ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                ",
  -- "    ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                  ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓              ",
  -- "  ██▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒                  ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓                ",
  -- "  ██▒▒▒▒▒▒  ▒▒▓▓▒▒▒▒▒▒  ▓▓▓▓            ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓                  ",
  -- "  ██▒▒▒▒▒▒  ▒▒▓▓▒▒▒▒▒▒  ▒▒▓▓            ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓             ▒▒▓▓▓▒▒",
  -- "██▒▒▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒    ██          ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓               ▓▓▓▓▓▓▓",
  -- "██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██          ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓             ▒▒▓▓▓▒▒",
  -- "██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██          ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓                  ",
  -- "██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██            ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓                ",
  -- "██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██              ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓              ",
  -- "██▒▒██▒▒▒▒▒▒██▒▒▒▒▒▒▒▒██▒▒▒▒██                ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                ",
  -- "████  ██▒▒██  ██▒▒▒▒██  ██▒▒██                  ████▒▒▒▒▒▒████                  ",
  -- "██      ██      ████      ████                      ██████                      ",
  -- }}}

  -- {{{ Neovim
  -- "                                                     ",
  -- "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
  -- "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
  -- "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
  -- "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
  -- "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
  -- "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
  -- "                                                     ",
  -- }}}

  -- {{{ Neovim [modern]
  "                                                                     ",
  "       ████ ██████           █████      ██                     ",
  "      ███████████             █████                             ",
  "      █████████ ███████████████████ ███   ███████████   ",
  "     █████████  ███    █████████████ █████ ██████████████   ",
  "    █████████ ██████████ █████████ █████ █████ ████ █████   ",
  "  ███████████ ███    ███ █████████ █████ █████ ████ █████  ",
  " ██████  █████████████████████ ████ █████ █████ ████ ██████ ",
  "                                                                       ",
  "                                                                       ",
  -- }}}

  -- {{{ Arch
  -- "                   -`                   ",
  -- "                  .o+`                  ",
  -- "                 `ooo/                  ",
  -- "                `+oooo:                 ",
  -- "               `+oooooo:                ",
  -- "               -+oooooo+:               ",
  -- "             `/:-:++oooo+:              ",
  -- "            `/++++/+++++++:             ",
  -- "           `/++++++++++++++:            ",
  -- "          `/+++ooooooooooooo/`          ",
  -- "         ./ooosssso++osssssso+`         ",
  -- "        .oossssso-````/ossssss+`        ",
  -- "       -osssssso.      :ssssssso.       ",
  -- "      :osssssss/        osssso+++.      ",
  -- "     /ossssssss/        +ssssooo/-      ",
  -- "   `/ossssso+/:-        -:/+osssso+-    ",
  -- "  `+sso+:-`                 `.-/+oso:   ",
  -- " `++:.                           `-/+/  ",
  -- " .`                                 `/  ",
  -- }}}
}

dashboard.section.buttons.val = {
  dashboard.button("/", "󰍉  > Grep", ":Telescope live_grep<CR>"),
  dashboard.button("f", "󰈔  > File", ":ene <BAR> startinsert <CR>"),
  dashboard.button("gf", "  > Git Files", ":Telescope git_files<CR>"),
  dashboard.button("l", "󰐱  > Lazy", ":Lazy<CR>"),
  dashboard.button("m", "󰐱  > Mason", ":Mason<CR>"),
  dashboard.button("nn", "  > Nvim [News]", ":help news<CR>"),
  dashboard.button("no", "  > Nvim [Options]", ":options<CR>"),
  dashboard.button("nh", "  > Nvim [Health]", ":checkhealth<CR>"),
  dashboard.button("tt", "󰭎  > Telescope", ":Telescope<CR>"),
  dashboard.button("tf", "󰭎  > Telescope [Find Files]", ":Telescope find_files<CR>"),
  dashboard.button("to", "󰭎  > Telescope [Old Files]", ":Telescope oldfiles<CR>"),
  dashboard.button("q", "  > Quit", ":qa<CR>"),
}

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
