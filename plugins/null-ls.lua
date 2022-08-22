local null_ls_config = function(config) -- overrides `require("null-ls").setup(config)`
  -- config variable is the default configuration table for the setup functino call
  local null_ls = require "null-ls"
  local formatting = null_ls.builtins.formatting
  -- Check supported formatters and linters
  -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
  -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
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
  }
  -- set up null-ls's on_attach function
  -- NOTE: You can remove this on attach function to disable format on save
  config.on_attach = function(client)
    if client.resolved_capabilities.document_formatting then
      vim.api.nvim_create_autocmd("BufWritePre", {
        desc = "Auto format before save",
        pattern = "<buffer>",
        callback = vim.lsp.buf.formatting_sync,
      })
    end
  end
  return config -- return final config table to use in require("null-ls").setup(config)
end

return null_ls_config -- return config table to use in require("null-ls").setup(config)
