-- Core options
require("core")

-- Lazy bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

-- Lazy `runtimepath`
vim.opt.rtp:prepend(lazypath)

-- Lazy setup
require("lazy").setup({
  spec = {
    { import = "dap" },
    { import = "lang" },
    { import = "mason" },
    { import = "plugins" }
  },
  checker = { enabled = false },
})

-- Color scheme
vim.cmd [[colorscheme tokyonight]]
-- vim.cmd [[colorscheme darkvoid]]
-- vim.cmd [[colorscheme theme]]
