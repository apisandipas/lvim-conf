
-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
lvim.keys.normal_mode["<Esc>"] = ":w<cr>"
lvim.keys.normal_mode["<C-c>"] = "ggVGY"

-- Use which-key to add extra bindings with the leader-key prefix
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }

lvim.builtin.which_key.mappings["t"] = {
  name = "+Trouble",
  t = { "<cmd>TodoTrouble<cr>", "TODOs" },
  r = { "<cmd>Trouble lsp_references<cr>", "References" },
  f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
  d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "Diagnostics" },
  q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
  l = { "<cmd>Trouble loclist<cr>", "LocationList" },
  w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Diagnostics" },
}

lvim.builtin.which_key.mappings["W"] = {
  name = "+Wiki",
  i = { "<cmd>VimwikiDiaryIndex <cr>", "Show Diary Index" },
  s = { "<cmd>VimwikiUISelect <cr>", "Show Select Wiki UI" },
  t = { "<cmd>VimwikiTabIndex <cr>", "Wiki Tab Index" },
  w = { "<cmd>VimwikiIndex <cr>", "Show Wiki Index" },
  ["<space>"] = {
    name = "+Diary",
    i = { "<cmd>VimwikiDiaryGenerateLinks <cr>", "Generate Diary Links" },
    m = { "<cmd>VimwikiMakeTomorrowDiaryNote <cr>", "Make Tomorrow Diary Note" },
    t = { "<cmd>VimwikiTabMakeDiaryNote <cr>", "Tab Make Diary Note" },
    w = { "<cmd>VimwikiMakeDiaryNote <cr>", "Make Diary Note" },
    y = { "<cmd>VimwikiMakeYesterdayDiaryNote <cr>", "Make Yesterday Diary Note" }
  }
}

-- lvim.builtin.which_key.mappings["o"] = { "+Org Mode" }
  -- c = { "<cmd>lua require('orgmode').action('capture.prompt') <cr>", "+Capture Prompt" },
  -- a = { "<cmd>lua require('orgmode').action('agenda.prompt') <cr>", "+Agenda Prompt"},
-- lvim.builtin.which_key.mappings.o.a.b = {"<cmd>lua require('orgmode').action('agenda.advance_span', -1)", "View Earlier"}
-- lvim.builtin.which_key.mappings.o.a.f = {"<cmd>lua require('orgmode').action('agenda.advance_span', 1)", "View Later"}


-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
lvim.builtin.telescope.on_config_done = function()
  local actions = require "telescope.actions"
  -- for input mode
  lvim.builtin.telescope.defaults.mappings.i["<C-j>"] = actions.move_selection_next
  lvim.builtin.telescope.defaults.mappings.i["<C-k>"] = actions.move_selection_previous
  lvim.builtin.telescope.defaults.mappings.i["<C-n>"] = actions.cycle_history_next
  lvim.builtin.telescope.defaults.mappings.i["<C-p>"] = actions.cycle_history_prev
  -- for normtrueal mode
  lvim.builtin.telescope.defaults.mappings.n["<C-j>"] = actions.move_selection_next
  lvim.builtin.telescope.defaults.mappings.n["<C-k>"] = actions.move_selection_previous
end


