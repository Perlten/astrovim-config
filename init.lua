local config = {
  updater = {
    branch = "nightly",
  },
  options = {
    opt = {
      so = 999,
    },
  },
  plugins = {
    ["null-ls"] = require "user.plugins.null-ls",
    ["alpha"] = require "user.plugins.alpha",
  },
  cmp = {
    source_priority = {
      nvim_lsp = 1000,
      luasnip = 750,
      buffer = 500,
      path = 250,
    },
  },
}

-- require "user.plugins.copilot"(config)
-- require "user.plugins.telescope"(config)
-- require "user.plugins.vimspector"(config)

vim.g.did_load_filetypes = 1

return config
