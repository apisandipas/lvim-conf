require('user.keys')
require('user.bufferline')
require('user.plugins')
require('user.settings')

-- general
lvim.colorscheme = "onedarker"

-- Builtins
lvim.builtin.dashboard.active = true
lvim.builtin.dashboard.custom_header = {}
lvim.builtin.terminal.active = true
lvim.builtin.dap.active = true
lvim.builtin.bufferline.active = true
lvim.builtin.cmp.experimental.ghost_text = false
lvim.builtin.telescope.defaults.path_display = { "smart" }
lvim.builtin.project.patterns = { ".git" }
lvim.builtin.project.detection_methods = { "pattern" }
lvim.builtin.fancy_statusline = { active = true } -- enable/disable fancy statusline
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 1

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "css",
  "rust",
  "java",
  "yaml",
  "org"
}
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
lvim.autocommands.custom_groups = {
  { "BufWinEnter", "*.lua", "setlocal ts=2 sw=2" },
  { "BufNewFile,BufRead", "*.md,*.mkdn,*.markdown,*.wiki", "set filetype=markdown"}
}

