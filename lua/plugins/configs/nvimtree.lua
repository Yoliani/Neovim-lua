
vim.o.termguicolors = true
-- Mappings for nvimtree

vim.api.nvim_set_keymap('n', '<leader>1', ':NvimTreeToggle<CR>', {
  noremap = true,
  silent = true,
})

local tree_cb = require('nvim-tree.config').nvim_tree_callback
-- default mappings
local list = {
  { key = { '<CR>', 'o', '<2-LeftMouse>' }, cb = tree_cb 'edit' },
  { key = { '<2-RightMouse>', '<C-]>' }, cb = tree_cb 'cd' },
  { key = '<C-v>', cb = tree_cb 'vsplit' },
  { key = '<C-x>', cb = tree_cb 'split' },
  { key = '<C-t>', cb = tree_cb 'tabnew' },
  { key = '<', cb = tree_cb 'prev_sibling' },
  { key = '>', cb = tree_cb 'next_sibling' },
  { key = 'P', cb = tree_cb 'parent_node' },
  { key = '<BS>', cb = tree_cb 'close_node' },
  { key = '<S-CR>', cb = tree_cb 'close_node' },
  { key = '<Tab>', cb = tree_cb 'preview' },
  { key = 'K', cb = tree_cb 'first_sibling' },
  { key = 'J', cb = tree_cb 'last_sibling' },
  { key = 'I', cb = tree_cb 'toggle_ignored' },
  { key = 'H', cb = tree_cb 'toggle_dotfiles' },
  { key = 'R', cb = tree_cb 'refresh' },
  { key = 'a', cb = tree_cb 'create' },
  { key = 'd', cb = tree_cb 'remove' },
  { key = 'r', cb = tree_cb 'rename' },
  { key = '<C-r>', cb = tree_cb 'full_rename' },
  { key = 'x', cb = tree_cb 'cut' },
  { key = 'c', cb = tree_cb 'copy' },
  { key = 'p', cb = tree_cb 'paste' },
  { key = 'y', cb = tree_cb 'copy_name' },
  { key = 'Y', cb = tree_cb 'copy_path' },
  { key = 'gy', cb = tree_cb 'copy_absolute_path' },
  { key = '[c', cb = tree_cb 'prev_git_item' },
  { key = ']c', cb = tree_cb 'next_git_item' },
  { key = '-', cb = tree_cb 'dir_up' },
  { key = 's', cb = tree_cb 'system_open' },
  { key = 'q', cb = tree_cb 'close' },
  { key = 'g?', cb = tree_cb 'toggle_help' },
}
require('nvim-treesitter.configs').setup {
  rainbow = {
    enable = true,
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  },
}

require('nvim-tree').setup {
  auto_reload_on_write = true,
  disable_netrw = false,
  hijack_cursor = false,
  hijack_netrw = true,
  hijack_unnamed_buffer_when_opening = false,
  ignore_buffer_on_setup = false,
  open_on_setup = false,
  open_on_tab = false,
  sort_by = 'name',
  update_cwd = false,
  view = {
    width = 30,
    height = 30,
    side = 'left',
    preserve_window_proportions = false,
    number = false,
    relativenumber = false,
    signcolumn = 'yes',
    mappings = {
      custom_only = false,
      list = list,
    },
  },
  hijack_directories = {
    enable = true,
    auto_open = true,
  },
  update_focused_file = {
    enable = false,
    update_cwd = false,
    ignore_list = {},
  },
  ignore_ft_on_setup = { '.git', 'node_modules', '.cache' },
  system_open = {
    cmd = nil,
    args = {},
  },
  diagnostics = {
    enable = false,
    show_on_dirs = false,
    icons = {
      hint = '',
      info = '',
      warning = '',
      error = '',
    },
  },
  filters = {
    dotfiles = false,
    custom = {},
    exclude = {},
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 400,
  },
  renderer = {
    highlight_git = false,
    highlight_opened_files = 'none',

    indent_markers = {
      enable = false,
    },
    icons = {
      padding = ' ',
      symlink_arrow = ' ➛ ',
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = false,
      },
      glyphs = {
        default = '',
        symlink = '',
        folder = {
          default = '',
          empty = '',
          empty_open = '',
          open = '',
          symlink = '',
          symlink_open = '',
          arrow_open = '',
          arrow_closed = '',
        },
        git = {
          unstaged = '✗',
          staged = '✓',
          unmerged = '',
          renamed = '➜',
          untracked = '★',
          deleted = '',
          ignored = '◌',
        },
      },
    },
  },
  actions = {
    change_dir = {
      enable = true,
      global = false,
    },
    open_file = {
      quit_on_open = false,
      resize_window = false,
      window_picker = {
        enable = true,
        chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890',
        exclude = {
          filetype = { 'notify', 'packer', 'qf', 'diff', 'fugitive', 'fugitiveblame' },
          buftype = { 'nofile', 'terminal', 'help' },
        },
      },
    },
  },
  trash = {
    cmd = 'trash',
    require_confirm = true,
  },
  log = {
    enable = false,
    truncate = false,
    types = {
      all = false,
      config = false,
      copy_paste = false,
      git = false,
      profile = false,
    },
  },
}
