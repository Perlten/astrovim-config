function Setup(config)
  config["mappings"]["n"]["<leader>fdn"] = {":Neoformat<CR>"}
  -- vim.g.neoformat_python_black = {["args"] = ["-l 79"], "exe"= ["black"], ["replace"]= 1 }
  vim.g.neoformat_enabled_python = {"black"}
  vim.g.neoformat_python_black = {
    ["args"] = {"-l 79"},
    ["exe"] = "black",
    ["replace"] = 1,
  }
end


return Setup
