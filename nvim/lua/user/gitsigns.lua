-- gitsigns

require('gitsigns').setup {
  signs = {
    add          = {hl = 'GitSignsAdd'   , text = '|', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
    change       = {hl = 'GitSignsChange', text = '│', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    delete       = {hl = 'GitSignsDelete', text = '>', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    topdelete    = {hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    changedelete = {hl = 'GitSignsChange', text = '|>', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
  },
  signcolumn = true,                                -- Toggle:`:Gitsigns toggle_signs`
  numhl      = true,                               -- Toggle:`:Gitsigns toggle_numhl`
  linehl     = false,                               -- Toggle:`:Gitsigns toggle_linehl`
  word_diff  = false,                               -- Toggle:`:Gitsigns toggle_word_diff`
  watch_gitdir = {
    interval = 1000,
    follow_files = true
  },
  attach_to_untracked = true,
  current_line_blame = true,                        -- Toggle: `:Gitsigns toggle_current_line_blame`
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = 'eol',                          -- 'eol' | 'overlay' | 'right_align'
    delay = 1000,
    ignore_whitespace = false,
  },
  current_line_blame_formatter = '<author_time:%b-%d> - <summary>', -- Option: '<author>'
  sign_priority = 6,
  update_debounce = 100,
  status_formatter = nil,                           -- Use default
  max_file_length = 10000,                          -- Disable if exceeds length
  preview_config = {                                -- Options passed to nvim_open_win
    border = 'single',
    style = 'minimal',
    relative = 'cursor',
    row = 0,
    col = 1
  },
  yadm = {
    enable = false
  },
}