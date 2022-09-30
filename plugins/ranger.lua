function Setup(config)
	vim.g.ranger_map_keys = 0
	vim.g.ranger_command_override = 'ranger --cmd "set show_hidden=true"'

	config.mappings.n["<leader>ee"] = { ":RangerWorkingDirectory<CR>" }
	config.mappings.n["<leader>ec"] = { ":RangerCurrentFile<CR>" }
end
return Setup
