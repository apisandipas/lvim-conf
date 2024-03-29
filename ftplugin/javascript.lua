local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    exe = "prettier",
    filetypes = { "javascript" },
    args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
  },
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup({{exe = "eslint", filetypes = {"javascript"} }})


