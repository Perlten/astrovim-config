local opts = {
  floating_window = false,
  handler_opts = {
    border = "none", -- double, rounded, single, shadow, none
  },
}
require("lsp_signature").setup(opts)
