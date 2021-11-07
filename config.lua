--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT
lvim.builtin.dashboard.custom_header = {}
-- general
lvim.log.level = "error"
lvim.format_on_save = true

lvim.colorscheme = "onedarkhc"
lvim.transparent_window = true

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"

vim.opt.number = true -- set numbered lines
vim.opt.relativenumber = true

-- add your own keymapping
lvim.keys.normal_mode["<Esc>"] = ":w<cr>"
lvim.keys.normal_mode["<C-c>"] = "ggVGY"

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- lvim.builtin.telescope.on_config_done = function()
--   local actions = require "telescope.actions"
--   -- for input mode
--   lvim.builtin.telescope.defaults.mappings.i["<C-j>"] = actions.move_selection_next
--   lvim.builtin.telescope.defaults.mappings.i["<C-k>"] = actions.move_selection_previous
--   lvim.builtin.telescope.defaults.mappings.i["<C-n>"] = actions.cycle_history_next
--   lvim.builtin.telescope.defaults.mappings.i["<C-p>"] = actions.cycle_history_prev
--   -- for normtrueal mode
--   lvim.builtin.telescope.defaults.mappings.n["<C-j>"] = actions.move_selection_next
--   lvim.builtin.telescope.defaults.mappings.n["<C-k>"] = actions.move_selection_previous
-- end

-- Use which-key to add extra bindings with the leader-key prefix
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["t"] = {
  name = "+Trouble",
  r = { "<cmd>Trouble lsp_references<cr>", "References" },
  f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
  d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "Diagnostics" },
  q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
  l = { "<cmd>Trouble loclist<cr>", "LocationList" },
  w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Diagnostics" },
}


lvim.builtin.which_key.mappings["w"] = {
  name = "+Wiki",
  i = { "<cmd>VimwikiDiaryIndex <cr>", "Show Diary Index" },
  s = { "<cmd>VimwikiUISelect <cr>", "Show Select Wiki UI" },
  t = { "<cmd>VimwikiTabIndex <cr>", "Wiki Tab Index" },
  w = { "<cmd>VimwikiIndex <cr>", "Show Wiki Index" },
  ["<space>"] = {
    name = "Diary",
    i = { "<cmd>VimwikiDiaryGenerateLinks <cr>", "Generate Diary Links" },
    m = { "<cmd>VimwikiMakeTomorrowDiaryNote <cr>", "Make Tomorrow Diary Note" },
    t = { "<cmd>VimwikiTabMakeDiaryNote <cr>", "Tab Make Diary Note" },
    w = { "<cmd>VimwikiMakeDiaryNote <cr>", "Make Diary Note" },
    y = { "<cmd>VimwikiMakeYesterdayDiaryNote <cr>", "Make Yesterday Diary Notie" }
  }
}

lvim.builtin.which_key.mappings["o"] = {
  name = "+Org Mode",
  c = {
    name = "Capture"
  },
  a = {
    name = "+Agenda",
    -- Some of these mappings only available within orgmode.
    v = {
        name =  '+View By Type',
        -- d = {  '', 'Show Agenda Day View' },
        w =  'Show Agency Weekly View',
        m =  'Show Agenda Monthly View' ,
        y =  'Show Agenda Yearly View'
      }
    }
  }


-- TODO: User Config for predefined plugins

lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0

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
}
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- JavaScript config
lvim.lang.javascript.formatters = { { exe = "prettier" } }
lvim.lang.javascriptreact.formatters = lvim.lang.javascript.formatters
lvim.lang.javascript.linters = { { exe = "eslint" } }
lvim.lang.javascriptreact.linters = lvim.lang.javascript.linters

lvim.lang.typescript.formatters = { { exe = "prettier" } }
lvim.lang.typescriptreact.formatters = lvim.lang.typescript.formatters
lvim.lang.typescript.linters = { { exe = "eslint" } }
lvim.lang.typescriptreact.linters = lvim.lang.typescript.linters

vim.cmd([[

let g:prettier#autoformat = 0
let g:prettier#autoformat_require_pragma = 0
let g:prettier#config#single_quote = 1
let g:prettier#config#jsx_single_quote = 1

autocmd BufNewFile,BufRead *.md,*.mkdn,*.markdown,*.wiki :set filetype=markdown

let g:vimwiki_list = [{
    \ 'path': '~/Mastermind/',
    \ 'syntax': 'markdown', 
    \ 'ext': '.md'
\ }]

]])

vim.cmd [[highlight Headline1 guibg=#1e2718]]
vim.cmd [[highlight Headline2 guibg=#21262d]]
vim.cmd [[highlight CodeBlock guibg=#1c1c1c]]
vim.cmd [[highlight Dash guibg=#D19A66 gui=bold]]
vim.fn.sign_define("Headline1", { linehl = "Headline1" })
vim.fn.sign_define("Headline2", { linehl = "Headline2" })

-- Additional Plugins
lvim.plugins = {
    -- Colorschemes
    -- {"ashfinal/vim-colors-paper"},
    {"folke/tokyonight.nvim",
        config = function()
            vim.g.tokyonight_style = "night"
            vim.g.tokyonight_transparent_sidebar = true
            vim.g.tokyonight_transparent = false
            vim.g.tokyonight_italic_comments = true

        end
    },
    -- {"tjdevries/colorbuddy.nvim"},
    -- {"Th3Whit3Wolf/onebuddy"},
    -- {"brainfucksec/wal.vim"},
    {"pacokwon/onedarkhc.vim"},
    -- {"rakr/vim-one"},

    -- Snippets
    {"SirVer/ultisnips"},
    {"mlaursen/vim-react-snippets"},

    -- Niceities
    {"jiangmiao/auto-pairs"},

    -- UI Enhancements
    {
      "norcalli/nvim-colorizer.lua",
      config = function()
        require("colorizer").setup({ "*" }, {
            RGB = true, -- #RGB hex codes
            RRGGBB = true, -- #RRGGBB hex codes
            RRGGBBAA = true, -- #RRGGBBAA hex codes
            rgb_fn = true, -- CSS rgb() and rgba() functions
            hsl_fn = true, -- CSS hsl() and hsla() functions
            css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
            css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
          })
      end,
    },
    {
      "ahmedkhalf/lsp-rooter.nvim",
      event = "BufRead",
      config = function()
        require("lsp-rooter").setup()
      end,
    },
    {
      "lukas-reineke/indent-blankline.nvim",
      event = "BufRead",
      setup = function()
        vim.g.indentLine_enabled = 1
        vim.g.indent_blankline_char = "▏"
        vim.g.indent_blankline_filetype_exclude = {"help", "terminal", "dashboard"}
        vim.g.indent_blankline_buftype_exclude = {"terminal"}
        vim.g.indent_blankline_show_trailing_blankline_indent = false
        vim.g.indent_blankline_show_first_indent_level = false
      end
    },
    {
      "phaazon/hop.nvim",
      event = "BufRead",
      config = function()
        require("hop").setup()
        vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
        vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
      end,
   },
    -- syntax
    {"baskerville/vim-sxhkdrc"},
    {"mboughaba/i3config.vim"},
    {"styled-components/vim-styled-components"},
    {"nekonako/xresources-nvim"},
    {"prettier/vim-prettier"},

    {
      "folke/trouble.nvim",
      cmd = "TroubleToggle",
    },


    -- Orgmode
    {'kristijanhusak/orgmode.nvim',
      branch = 'tree-sitter',
      config = function()
        require('orgmode').setup({
            org_agenda_files = {'~/org/*'},
            org_default_notes_file = '~/org/notes.org',
          })
      end
    },

    {"akinsho/org-bullets.nvim",
      config = function()
        require("org-bullets").setup {
          symbols = { "◉", "○", "✸", "✿", "✼" }
        }
      end
    },
    {"lukas-reineke/headlines.nvim",
      config = function()
        require("headlines").setup()
      end,
    },

    {"vimwiki/vimwiki"}
}

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
lvim.autocommands.custom_groups = {
  { "BufWinEnter", "*.lua", "setlocal ts=4 sw=4" },
}
