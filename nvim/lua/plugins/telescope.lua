-- Telescope.nvim
-- https://github.com/nvim-telescope/telescope.nvim
-- :h telescope.nvim

local telescope = require("telescope")
local actions = require "telescope.actions"

telescope.setup {
  -- Defaults {{{
  defaults = {
    -- Border
    border = true,
    borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },

    -- Icons
    entry_prefix = " ",
    multi_icon = "+",
    prompt_prefix = "> ",
    selection_caret = ">",

    -- Mode
    initial_mode = "insert",

    -- Mappings
    -- https://github.com/nvim-telescope/telescope.nvim/blob/master/lua/telescope/mappings.lua
    mappings = {
      -- Insert {{{
      i = {
        ["<C-p>"] = actions.move_selection_previous,

        ["<C-c>"] = actions.close,

        ["<Down>"] = actions.move_selection_next,
        ["<Up>"] = actions.move_selection_previous,

        ["<CR>"] = actions.select_default,
        ["<C-x>"] = actions.select_horizontal,
        ["<C-v>"] = actions.select_vertical,
        ["<C-t>"] = actions.select_tab,

        ["<C-u>"] = actions.preview_scrolling_up,
        ["<C-d>"] = actions.preview_scrolling_down,
        ["<C-f>"] = actions.preview_scrolling_left,
        ["<C-k>"] = actions.preview_scrolling_right,

        ["<PageUp>"] = actions.results_scrolling_up,
        ["<PageDown>"] = actions.results_scrolling_down,
        ["<M-f>"] = actions.results_scrolling_left,
        ["<M-k>"] = actions.results_scrolling_right,

        ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
        ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
        ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
        ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
        ["<C-l>"] = actions.complete_tag,
        ["<C-/>"] = actions.which_key,
        ["<C-_>"] = actions.which_key, -- keys from pressing <C-/>
        ["<C-w>"] = { "<c-s-w>", type = "command" },
        ["<C-r><C-w>"] = actions.insert_original_cword,
        ["<C-r><C-a>"] = actions.insert_original_cWORD,
        ["<C-r><C-f>"] = actions.insert_original_cfile,
        ["<C-r><C-l>"] = actions.insert_original_cline,
      },
      -- }}}

      -- Normal {{{
      n ={
        ["<esc>"] = actions.close,
        ["<CR>"] = actions.select_default,
        ["<C-x>"] = actions.select_horizontal,
        ["<C-v>"] = actions.select_vertical,
        ["<C-t>"] = actions.select_tab,

        ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
        ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
        ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
        ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,

        -- TODO: This would be weird if we switch the ordering.
        ["j"] = actions.move_selection_next,
        ["k"] = actions.move_selection_previous,
        ["H"] = actions.move_to_top,
        ["M"] = actions.move_to_middle,
        ["L"] = actions.move_to_bottom,

        ["<Down>"] = actions.move_selection_next,
        ["<Up>"] = actions.move_selection_previous,
        ["gg"] = actions.move_to_top,
        ["G"] = actions.move_to_bottom,

        ["<C-u>"] = actions.preview_scrolling_up,
        ["<C-d>"] = actions.preview_scrolling_down,
        ["<C-f>"] = actions.preview_scrolling_left,
        ["<C-k>"] = actions.preview_scrolling_right,

        ["<PageUp>"] = actions.results_scrolling_up,
        ["<PageDown>"] = actions.results_scrolling_down,
        ["<M-f>"] = actions.results_scrolling_left,
        ["<M-k>"] = actions.results_scrolling_right,

        ["?"] = actions.which_key,
      }
      -- }}}
    },

    -- Opacity
    winblend = 0,

    -- Strategies
    layout_strategy = "horizontal",
    scroll_strategy = "cycle",
    selection_strategy = "reset",
    sorting_strategy = "descending",

    -- Title
    dynamic_preview_title = true,
    prompt_title = false,
    results_title = false,

    -- Wrap
    wrap_results = false,
  },
  -- }}}

  -- Pickers {{{
  pickers = {
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    find_files = {
      -- theme = "dropdown",
    }
  },
  -- }}}

  -- Extensions {{{
  extensions = {
    -- extension_name = {
    --   extension_config_key = value,
    -- }
  }
  -- }}}
}
