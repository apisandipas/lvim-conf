
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
    {"brainfucksec/wal.vim"},
    {"pacokwon/onedarkhc.vim"},
    -- {"rakr/vim-one"},

    -- Snippets
    {"SirVer/ultisnips"},
    {"mlaursen/vim-react-snippets"},

    -- Niceities
    {"jiangmiao/auto-pairs"},

    -- UI Enhancements
    {
      "folke/todo-comments.nvim",
      requires = "nvim-lua/plenary.nvim",
      config = function()
        require("user.todo-comments").config()
      end
    },
    {
      "norcalli/nvim-colorizer.lua",
      config = function()
        require('user.nvim-colorizer').config()
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
      config = function()
        require('user.blankline').config()
      end
    },
    {
      "phaazon/hop.nvim",
      event = "BufRead",
      config = function()
        require('user.hop').config()
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
    {"alexlafroscia/postcss-syntax.vim"},
    -- Orgmode
    {'kristijanhusak/orgmode.nvim',
      config = function()
        require('user.orgmode').config()
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
    {
      "vimwiki/vimwiki"
    }
}

