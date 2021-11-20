-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/bryan/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/bryan/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/bryan/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/bryan/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/bryan/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\1\2?\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\22lvim.core.comment\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/opt/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["DAPInstall.nvim"] = {
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/DAPInstall.nvim",
    url = "https://github.com/Pocco81/DAPInstall.nvim"
  },
  ["FixCursorHold.nvim"] = {
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/FixCursorHold.nvim",
    url = "https://github.com/antoinemadec/FixCursorHold.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["barbar.nvim"] = {
    config = { "\27LJ\1\2B\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\25lvim.core.bufferline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/opt/barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\1\2A\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\24lvim.core.dashboard\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/opt/dashboard-nvim",
    url = "https://github.com/ChristianChiarulli/dashboard-nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\1\2@\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\23lvim.core.gitsigns\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["headlines.nvim"] = {
    config = { "\27LJ\1\0027\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\14headlines\frequire\0" },
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/headlines.nvim",
    url = "https://github.com/lukas-reineke/headlines.nvim"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\1\2À\1\0\0\5\0\r\0\0224\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\3\0007\0\4\0007\0\5\0%\1\6\0%\2\a\0%\3\b\0003\4\t\0>\0\5\0014\0\3\0007\0\4\0007\0\5\0%\1\6\0%\2\n\0%\3\v\0003\4\f\0>\0\5\1G\0\1\0\1\0\1\vsilent\2\17:HopWord<cr>\6S\1\0\1\vsilent\2\18:HopChar2<cr>\6s\6n\20nvim_set_keymap\bapi\bvim\nsetup\bhop\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/opt/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["i3config.vim"] = {
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/i3config.vim",
    url = "https://github.com/mboughaba/i3config.vim"
  },
  ["indent-blankline.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/opt/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lsp-rooter.nvim"] = {
    config = { "\27LJ\1\0028\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\15lsp-rooter\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/opt/lsp-rooter.nvim",
    url = "https://github.com/ahmedkhalf/lsp-rooter.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\1\2?\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\22lvim.core.lualine\frequire\0" },
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nlsp-settings.nvim"] = {
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/nlsp-settings.nvim",
    url = "https://github.com/tamago324/nlsp-settings.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\1\2A\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\24lvim.core.autopairs\frequire\0" },
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\1\2;\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\18lvim.core.cmp\frequire\0" },
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\1\2|\0\0\3\0\5\0\b4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0>\0\3\1G\0\1\0\1\0\a\bcss\2\vrgb_fn\2\rRRGGBBAA\2\vhsl_fn\2\vcss_fn\2\bRGB\2\vRRGGBB\2\1\2\0\0\6*\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-dap"] = {
    config = { "\27LJ\1\2;\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\18lvim.core.dap\frequire\0" },
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\1\2@\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\23lvim.core.nvimtree\frequire\0" },
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\1\2B\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\25lvim.core.treesitter\frequire\0" },
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/opt/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["onedarkhc.vim"] = {
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/onedarkhc.vim",
    url = "https://github.com/pacokwon/onedarkhc.vim"
  },
  ["org-bullets.nvim"] = {
    config = { "\27LJ\1\2h\0\0\3\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\1>\0\2\1G\0\1\0\fsymbols\1\0\0\1\6\0\0\bâ—‰\bâ—‹\bâœ¸\bâœ¿\bâœ¼\nsetup\16org-bullets\frequire\0" },
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/org-bullets.nvim",
    url = "https://github.com/akinsho/org-bullets.nvim"
  },
  ["orgmode.nvim"] = {
    config = { '\27LJ\1\2¡\4\0\0\5\0\24\0"4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\1>\0\2\0014\0\0\0%\1\6\0>\0\2\0027\0\a\0>\0\1\0023\1\f\0003\2\t\0003\3\n\0:\3\v\2:\2\r\1:\1\b\0004\1\0\0%\2\14\0>\1\2\0027\1\2\0013\2\20\0003\3\15\0003\4\16\0:\4\17\0033\4\18\0:\4\19\3:\3\21\0023\3\22\0:\3\23\2>\1\2\1G\0\1\0\21ensure_installed\1\2\0\0\borg\14highlight\1\0\0&additional_vim_regex_highlighting\1\2\0\0\borg\fdisable\1\2\0\0\borg\1\0\1\venable\2\28nvim-treesitter.configs\17install_info\1\0\1\rfiletype\borg\nfiles\1\3\0\0\17src/parser.c\19src/scanner.cc\1\0\2\rrevision\tmain\burl0https://github.com/milisims/tree-sitter-org\borg\23get_parser_configs\28nvim-treesitter.parsers\20org_agenda_file\1\0\1\27org_default_notes_file\20~/org/notes.org\1\2\0\0\f~/org/*\nsetup\forgmode\frequire\0' },
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/orgmode.nvim",
    url = "https://github.com/kristijanhusak/orgmode.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["postcss-syntax.vim"] = {
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/postcss-syntax.vim",
    url = "https://github.com/alexlafroscia/postcss-syntax.vim"
  },
  ["project.nvim"] = {
    config = { "\27LJ\1\2?\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\22lvim.core.project\frequire\0" },
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/project.nvim",
    url = "https://github.com/ahmedkhalf/project.nvim"
  },
  ["structlog.nvim"] = {
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/structlog.nvim",
    url = "https://github.com/Tastyep/structlog.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\1\2A\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\24lvim.core.telescope\frequire\0" },
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\1\2?\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\1\2@\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\23lvim.core.terminal\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/opt/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["tokyonight.nvim"] = {
    config = { "\27LJ\1\2¹\1\0\0\2\0\a\0\0174\0\0\0007\0\1\0%\1\3\0:\1\2\0004\0\0\0007\0\1\0)\1\2\0:\1\4\0004\0\0\0007\0\1\0)\1\1\0:\1\5\0004\0\0\0007\0\1\0)\1\2\0:\1\6\0G\0\1\0\31tokyonight_italic_comments\27tokyonight_transparent#tokyonight_transparent_sidebar\nnight\21tokyonight_style\6g\bvim\0" },
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["trouble.nvim"] = {
    commands = { "TroubleToggle" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/opt/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ultisnips = {
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/ultisnips",
    url = "https://github.com/SirVer/ultisnips"
  },
  ["vim-prettier"] = {
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/vim-prettier",
    url = "https://github.com/prettier/vim-prettier"
  },
  ["vim-react-snippets"] = {
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/vim-react-snippets",
    url = "https://github.com/mlaursen/vim-react-snippets"
  },
  ["vim-styled-components"] = {
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/vim-styled-components",
    url = "https://github.com/styled-components/vim-styled-components"
  },
  ["vim-sxhkdrc"] = {
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/vim-sxhkdrc",
    url = "https://github.com/baskerville/vim-sxhkdrc"
  },
  vimwiki = {
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/vimwiki",
    url = "https://github.com/vimwiki/vimwiki"
  },
  ["wal.vim"] = {
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/wal.vim",
    url = "https://github.com/brainfucksec/wal.vim"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\1\2A\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\24lvim.core.which-key\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/opt/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["xresources-nvim"] = {
    loaded = true,
    path = "/home/bryan/.local/share/lunarvim/site/pack/packer/start/xresources-nvim",
    url = "https://github.com/nekonako/xresources-nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: indent-blankline.nvim
time([[Setup for indent-blankline.nvim]], true)
try_loadstring("\27LJ\1\2ã\2\0\0\2\0\v\0\0254\0\0\0007\0\1\0'\1\1\0:\1\2\0004\0\0\0007\0\1\0%\1\4\0:\1\3\0004\0\0\0007\0\1\0003\1\6\0:\1\5\0004\0\0\0007\0\1\0003\1\b\0:\1\a\0004\0\0\0007\0\1\0)\1\1\0:\1\t\0004\0\0\0007\0\1\0)\1\1\0:\1\n\0G\0\1\0-indent_blankline_show_first_indent_level4indent_blankline_show_trailing_blankline_indent\1\2\0\0\rterminal%indent_blankline_buftype_exclude\1\4\0\0\thelp\rterminal\14dashboard&indent_blankline_filetype_exclude\bâ–\26indent_blankline_char\23indentLine_enabled\6g\bvim\0", "setup", "indent-blankline.nvim")
time([[Setup for indent-blankline.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\1\2B\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\25lvim.core.treesitter\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\1\2;\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\18lvim.core.cmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: orgmode.nvim
time([[Config for orgmode.nvim]], true)
try_loadstring('\27LJ\1\2¡\4\0\0\5\0\24\0"4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\1>\0\2\0014\0\0\0%\1\6\0>\0\2\0027\0\a\0>\0\1\0023\1\f\0003\2\t\0003\3\n\0:\3\v\2:\2\r\1:\1\b\0004\1\0\0%\2\14\0>\1\2\0027\1\2\0013\2\20\0003\3\15\0003\4\16\0:\4\17\0033\4\18\0:\4\19\3:\3\21\0023\3\22\0:\3\23\2>\1\2\1G\0\1\0\21ensure_installed\1\2\0\0\borg\14highlight\1\0\0&additional_vim_regex_highlighting\1\2\0\0\borg\fdisable\1\2\0\0\borg\1\0\1\venable\2\28nvim-treesitter.configs\17install_info\1\0\1\rfiletype\borg\nfiles\1\3\0\0\17src/parser.c\19src/scanner.cc\1\0\2\rrevision\tmain\burl0https://github.com/milisims/tree-sitter-org\borg\23get_parser_configs\28nvim-treesitter.parsers\20org_agenda_file\1\0\1\27org_default_notes_file\20~/org/notes.org\1\2\0\0\f~/org/*\nsetup\forgmode\frequire\0', "config", "orgmode.nvim")
time([[Config for orgmode.nvim]], false)
-- Config for: nvim-dap
time([[Config for nvim-dap]], true)
try_loadstring("\27LJ\1\2;\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\18lvim.core.dap\frequire\0", "config", "nvim-dap")
time([[Config for nvim-dap]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\1\2A\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\24lvim.core.telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: org-bullets.nvim
time([[Config for org-bullets.nvim]], true)
try_loadstring("\27LJ\1\2h\0\0\3\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\1>\0\2\1G\0\1\0\fsymbols\1\0\0\1\6\0\0\bâ—‰\bâ—‹\bâœ¸\bâœ¿\bâœ¼\nsetup\16org-bullets\frequire\0", "config", "org-bullets.nvim")
time([[Config for org-bullets.nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\1\2|\0\0\3\0\5\0\b4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0>\0\3\1G\0\1\0\1\0\a\bcss\2\vrgb_fn\2\rRRGGBBAA\2\vhsl_fn\2\vcss_fn\2\bRGB\2\vRRGGBB\2\1\2\0\0\6*\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: headlines.nvim
time([[Config for headlines.nvim]], true)
try_loadstring("\27LJ\1\0027\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\14headlines\frequire\0", "config", "headlines.nvim")
time([[Config for headlines.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\1\2?\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\22lvim.core.lualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\1\2?\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: tokyonight.nvim
time([[Config for tokyonight.nvim]], true)
try_loadstring("\27LJ\1\2¹\1\0\0\2\0\a\0\0174\0\0\0007\0\1\0%\1\3\0:\1\2\0004\0\0\0007\0\1\0)\1\2\0:\1\4\0004\0\0\0007\0\1\0)\1\1\0:\1\5\0004\0\0\0007\0\1\0)\1\2\0:\1\6\0G\0\1\0\31tokyonight_italic_comments\27tokyonight_transparent#tokyonight_transparent_sidebar\nnight\21tokyonight_style\6g\bvim\0", "config", "tokyonight.nvim")
time([[Config for tokyonight.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\1\2@\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\23lvim.core.nvimtree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\1\2A\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\24lvim.core.autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: project.nvim
time([[Config for project.nvim]], true)
try_loadstring("\27LJ\1\2?\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\22lvim.core.project\frequire\0", "config", "project.nvim")
time([[Config for project.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TroubleToggle lua require("packer.load")({'trouble.nvim'}, { cmd = "TroubleToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufReadPost * ++once lua require("packer.load")({'nvim-ts-context-commentstring'}, { event = "BufReadPost *" }, _G.packer_plugins)]]
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'toggleterm.nvim', 'which-key.nvim', 'barbar.nvim', 'dashboard-nvim'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'indent-blankline.nvim', 'gitsigns.nvim', 'hop.nvim', 'lsp-rooter.nvim', 'Comment.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
