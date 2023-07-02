-- Nvim DAP
-- https://github.com/mfussenegger/nvim-dap/
-- :h dap.txt
-- :h dap-configuration


-- Adapter config
local dap = require('dap')
dap.adapters.codelldb = {
  type = 'server',
  port = "${port}",
}

-- Debugee config
-- [TODO]

-- Client config
-- [TODO]

-- Signs config
vim.fn.sign_define('DapBreakpoint',          {text='B', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapBreakpointCondition', {text='C', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapLogPoint',            {text='L', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapStopped',             {text='→', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapBreakpointRejected',  {text='R', texthl='', linehl='', numhl=''})

-- Keymaps
--vim.keymap.set("n", "<Leader>dt", ':DapToggleBreakpoint<CR>')
--vim.keymap.set("n", "<Leader>dx", ':DapTerminate<CR>')
--vim.keymap.set("n", "<Leader>do", ':DapStepOver<CR>')
