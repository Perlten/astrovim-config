local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls_config = function(config) -- overrides `require("null-ls").setup(config)`
  local null_ls = require "null-ls"
  local formatting = null_ls.builtins.formatting
  config.sources = {
    -- Set a formatter
    formatting.black.with { extra_args = { "--line-length=79" } },
    -- Lua
    null_ls.builtins.formatting.stylua,
    -- Python
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.diagnostics.flake8,
    -- Bash
    null_ls.builtins.formatting.shfmt,
    null_ls.builtins.diagnostics.shellcheck,
    -- C#
    null_ls.builtins.formatting.csharpier,
    -- Terraform
    null_ls.builtins.formatting.terraform_fmt
  }
  return config -- return final config table to use in require("null-ls").setup(config)
end

return null_ls_config -- return config table to use in require("null-ls").setup(config)
