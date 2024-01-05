-- Lazy
require("plugins.lazy-nvim")

-- Nvim Core
require("core.autocmd")
require("core.colors")
require("core.lspconfig")
require("core.options")
require("core.keymaps")

-- DAP
require("dap.nvim-dap")
require("dap.nvim-dap-ui")
require("dap.nvim-dap-python")
require("dap.nvim-dap-vtxt")

-- Mason
require("mason.mason")
require("mason.mason-lspconfig")
require("mason.mason-nvim-dap")

-- CMP & Snipppet
require("plugins.nvim-cmp")
require("plugins.luasnip")

-- GIT
require("plugins.gitsigns")

-- Lang
--require("lang.rust-tools")
require("lang.rustaceanvim")
require("lang.tsserver")

-- Navigation
require("plugins.alpha-nvim")
require("plugins.oil")
require("plugins.which-key")

-- Plugins
require("plugins.autopairs")
require("plugins.colorizer")
require("plugins.comment")
require("plugins.hex")
require("plugins.indent-blankline")
require("plugins.lualine")
require("plugins.lsp_lines")
require("plugins.lspsaga")
require("plugins.toggleterm")

-- Telescope
require("plugins.telescope")

-- Treesitter
require("treesitter.treesitter")
require("treesitter.treesitter-context")
