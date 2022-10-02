local config = {
  updater = {
    branch = "nightly",
  },
  options = {
    opt = {
      so = 999,
    },
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

vim.g.did_load_filetypes = 1

return config
