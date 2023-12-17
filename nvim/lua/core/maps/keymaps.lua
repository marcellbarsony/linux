-- Keymaps
-- https://neovim.io/doc/user/map.html

-- Modes
--  n - normal_mode
--  i - insert_mode
--  v - visual_mode
--  x - visual_block_mode
--  t - term_mode
--  c - command_mode

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

-- Leader
map("n", "<Bslash>", "", { desc = "LEADER" })
vim.g.mapleader = "\\"

-- Core
map("n", "<leader>bw", "<cmd>wa!<CR>", { desc = "Write all" })
map("n", "<leader>bx", "<cmd>wqa!<CR>", { desc = "Write all & Quit" })
--map("n", "<leader>br", "<cmd>source<CR>", { desc = "Reload [TODO]" })
vim.g.maplocalleader = "\\"

-- Alpha
map("n", "<leader>pa", "<cmd>Alpha<CR>", { desc = "Alpha" })

-- Arrow keys
map("", "<up>", "<nop>")
map("", "<down>", "<nop>")
map("", "<left>", "<nop>")
map("", "<right>", "<nop>")

-- Buffers
map("n", "<Tab>", "<cmd>bn<CR>", { desc = "Buffer [Next]" })
map("n", "<S-Tab>", "<cmd>bp<CR>", { desc = "Buffer [Prev]" })
map("n", "<C-'>", "<cmd>b#<CR>", { desc = "Buffer [To last]" })
map("n", "<C-q>", "<cmd>bdelete<CR>", { desc = "Buffer [Delete]" }) -- :bd!<CR>
map("n", "<C-^>", "<cmd>_#<CR>", { desc = "Alternate file" }) -- :help alternate-file
--map("n", "<leader>ba", "O<ESC>", { desc = "Line [Above]" })
--map("n", "<leader>bb", "o<ESC>", { desc = "Line [Below]" })

-- Clipboard
map("n", "y", "\"+y", { desc = "Yank [Global]" })
map("v", "y", "\"+y", { desc = "Yank [Global]" })
map("n", "y", "\"+Y", { desc = "Yank [Global]" })
--map("n", "<leader>p", "\"_dp", { desc = "Paste" })

-- Gitsigns
map("n", "<leader>uu", "<cmd>Gitsigns toggle_signs<CR>:Gitsigns toggle_numhl<CR>:Gitsigns toggle_current_line_blame<CR>", { desc = "Gitsigns" })
--map("n", "<leader>gs", "<cmd>Gitsigns toggle_signs<CR>", { desc = "Signs" })
--map("n", "<leader>gn", "<cmd>Gitsigns toggle_numhl<CR>", { desc = "Numhl" })
--map("n", "<leader>gb", "<cmd>Gitsigns toggle_current_line_blame<CR>", { desc = "Blame" })

-- Highlights
map("n", "<leader>bc", "<cmd>nohl<CR>", { desc = "Clear [Highlight]" })
map("n", "<leader>br", [[<cmd>%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace [Highlight]" })

-- Lazy
map("n", "<leader>pl", "<cmd>Lazy<CR>", { desc = "Lazy" })

-- Lines (move)
-- https://vim.fandom.com/wiki/Moving_lines_up_or_down
map("n", "<J>", "<cmd>move .+1<CR>", { desc = "Line [Move Down]" })
map("n", "<K>", "<cmd>move .-2<CR>", { desc = "Line [Move Up]" })
map("v", "K", ":move '<-2<CR>gv-gv", { desc = "Move [Up]" }) -- Move up
map("v", "J", ":move '>+1<CR>gv-gv", { desc = "Move [Down]" }) -- Move down
map("v", "<", "<gv", { desc = "Indent [Left]" }) -- Indent left
map("v", ">", ">gv", { desc = "Indent [Left]" }) -- Indent right
--map("x", "<J>", "<cmd>move '>+1<CR>gv=gv", { desc = "Block [Move Down]" })
--map("x", "<K>", "<cmd>move '<-2<CR>gv=gv", { desc = "Block [Move Up]" })

-- Mason
map("n", "<leader>pmc", "<cmd>checkhealth mason<CR>", { desc = "Health" })
map("n", "<leader>pmh", "<cmd>h mason<CR>", { desc = "Help" })
map("n", "<leader>pml", "<cmd>MasonLog<CR>", { desc = "Log" })
map("n", "<leader>pmm", "<cmd>Mason<CR>", { desc = "Mason" })
map("n", "<leader>pmu", "<cmd>MasonUninstallAll<CR>", { desc = "Uninstall all" })

-- Navigation
-- Conflicts with cursor scrolloff
--map("n", "<C-d>", "<C-d>zz<CR>", { desc = "Page down" })
--map("n", "<C-u>", "<C-u>zz<CR>", { desc = "Page up" })

-- Oil
map("n", "-", "<cmd>Oil<cr>", { desc = "Open parent directory" })
map("n", "<leader>po", "<cmd>Oil<cr>", { desc = "Oil" })

-- Search
map("n", "*", "*N", { desc = "Find word" }) -- Fix * - don't move to next match
map("n", "n", "nzzzv", { desc = "Search [Next]" }) -- Fix n: keep cursor in center
map("n", "N", "Nzzzv", { desc = "Search [Previous]" }) -- Fix N: keep cursor in center

-- Shell movements
map("i", "<C-A>", "<ESC>I", { desc = "Shell movement" })
map("i", "<C-E>", "<ESC>A", { desc = "Shell movement" })

-- Splits
map("n", "<leader>sh", "<cmd>split<CR>" , { desc = "Horizontal" })
map("n", "<leader>sv", "<cmd>vsplit<CR>", { desc = "Vertical" })
map("n", "<leader>ss", "<C-w>x", { desc = "Swap" })
map("n", "<C-k>", "<C-w>k", { desc = "Split [Up]" }) -- Move up
map("n", "<C-j>", "<C-w>j", { desc = "Split [Down]" }) -- Move down
map("n", "<C-h>", "<C-w>h", { desc = "Split [Left]" }) -- Move left
map("n", "<C-l>", "<C-w>l", { desc = "Split [Right]" }) -- Move right
map("n", "<C-A-k>", "<cmd>resize -5<CR>", { desc = "Split [Hor -]" }) -- Decrease
map("n", "<C-A-j>", "<cmd>resize +5<CR>", { desc = "Split [Hor +]" }) -- Increase
map("n", "<C-A-h>", "<cmd>vertical resize -5<CR>", { desc = "Split [Ver +]" }) -- Increase
map("n", "<C-A-l>", "<cmd>vertical resize +5<CR>", { desc = "Split [Ver -]" }) -- Decrease

-- Undo & Redo
map("n", "<u>", "<cmd>undo<CR>", { desc = "Undo" }) -- Undo
map("n", "<C-r>", "<cmd>redo<CR>", { desc = "Redo" }) -- Redo

-- Use operator pending mode to visually select the whole buffer
-- e.g. dA = delete buffer ALL, yA = copy whole buffer ALL
map("o", "A", "<cmd><C-U>normal! mzggVG<CR>`z")
map("x", "A", "<cmd><C-U>normal! ggVG<CR>")
