local options = {

  allowrevins = false,
  autochdir = true,
  backspace = 'indent,eol,start',
  binary = false,
  breakindent = true,
  browsedir = 'current',
  clipboard = '',


  -- Backup
  backup = false,
  backupcopy = 'auto',
  backupext = "~",
  backupdir = '/tmp/',
  writebackup = false,

  -- Buffer
  bufhidden = '',
  buflisted = true,
  buftype = '',

  -- Colors
  background = 'dark',
  termguicolors = true,

  -- Command line
  cdhome = true,
  --o.cedit = 'CTRL-F',
  cmdheight = 2,

  -- Indentation
  autoindent = false,
  cindent = true,
  cinoptions = '',
  cinwords = 'if,else,while,do,for,switch',
  --o.cinscopecls = 'public,protected,private',
  smartindent = false,

  -- Map <leader> to space
  --mapleader = ' ',
  --maplocalleader = ' ',

  -- R/W
  autoread = true,
  autowrite = false,
  autowriteall = false,

  -- Decrease update time
  timeoutlen = 500,
  updatetime = 200,

  -- Number of screen lines to keep above and below the cursor
  scrolloff = 8,

  -- Better editor UI
  number = true,
  numberwidth = 4,
  relativenumber = true,

  -- Better editing experience
  expandtab = true,
  wrap = true,
  textwidth = 300,
  tabstop = 4,
  shiftwidth = 0,
  softtabstop = -1, -- If negative, shiftwidth value is used
  list = true,
  listchars = 'trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂',

  -- Makes neovim and host OS clipboard play nicely with each other
  clipboard = 'unnamedplus',

  -- Case insensitive searching UNLESS /C or capital in search
  ignorecase = true,
  smartcase = true,

  undofile = true,
  swapfile = false,

  -- Command line history
  history = 50,

  -- Buffer splitting
  splitright = true,
  splitbelow = true,

}

vim.opt.shortmess:append "c"

-- Loop through options
for k, v in pairs(options) do
    vim.opt[k] = v
end