-- mason-lspconfig.nvim
-- https://github.com/williamboman/mason-lspconfig.nvim

-- Lspconfig
-- https://github.com/williamboman/mason-lspconfig.nvim#configuration
require("mason-lspconfig").setup({
  -- Bootstrap LSP servers
  ensure_installed = {
    "bashls", -- Bash (Shell script)
    "lua_ls", -- Lua
    "rust_analyzer", -- Rust
    "tsserver", -- Typescript / JavaScript
    -- "pyright", -- Python (requires npm)
  },
  automatic_installation = false,
  handlers = nil,
})
