function Setup(config)
	config.mappings.n["<leader>gcl"] = { ":GitConflictListQf <CR>" }
	config.mappings.n["<leader>gco"] = { ":GitConflictChooseOurs <CR>" }
	config.mappings.n["<leader>gct"] = { ":GitConflictChooseTheirs <CR>" }
	config.mappings.n["<leader>gct"] = { ":GitConflictChooseTheirs <CR>" }
	config.mappings.n["<leader>gcb"] = { ":GitConflictChooseBoth<CR>" }
	config.mappings.n["<leader>gcn"] = { ":GitConflictNextConflict<CR>" }
	config.mappings.n["<leader>gcp"] = { ":GitConflictPrevConflict<CR>" }
end
return Setup
