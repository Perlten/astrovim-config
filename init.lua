local config = {
	options = {
		opt = {
			so = 999,
		},
	},
	mappings = {
		-- first key is the mode
		n = {
			["M-s"] = { "<Escape>" },
			-- Movement
			["<C-j>"] = { "10j" },
			["<C-k>"] = { "10k" },
			["<M-l>"] = { "$" },
			["<M-h>"] = { "0" },
			["<C-l>"] = { "w" },
			["<C-h>"] = { "b" },
			-- Indent
			["<Tab>"] = { ">>" },
			["<S-Tab>"] = { "<<" },
			-- No cut
			["x"] = { '"_x' },
			["d"] = { '"_d' },
			["c"] = { '"_c' },
			["D"] = { '"_D' },
			-- Random
			["<leader>tq"] = { ":tabclose<CR>" },
			["<leader>wsv"] = { ":vsplit<CR>" },
			["<leader>wsh"] = { ":split<CR>" },
			["<leader>ww"] = { ":w<CR>" },
			["<leader>wa"] = { ":wa<CR>" },
			["<leader>wq"] = { ":wq<CR>" },
			-- Window movement
			["<leader>1"] = { ":1 wincmd w<CR>" },
			["<leader>2"] = { ":2 wincmd w<CR>" },
			["<leader>3"] = { ":3 wincmd w<CR>" },
			["<leader>4"] = { ":4 wincmd w<CR>" },
			["<leader>5"] = { ":5 wincmd w<CR>" },
			["<leader>6"] = { ":6 wincmd w<CR>" },
			["<leader>7"] = { ":7 wincmd w<CR>" },
			["<leader>8"] = { ":8 wincmd w<CR>" },
			["<leader>9"] = { ":9 wincmd w<CR>" },
			["<leader><tab>"] = { "<c-w><c-p>" },
			-- LSP
			["<leader>lgd"] = { ":lua vim.lsp.buf.definition()<cr>" },
			["<leader>ll"] = { ":lua vim.lsp.buf.hover()<cr>" },
			-- Move lines up and down
			["<M-S-j>"] = { ":m .+1<CR>==" },
			["<M-S-k>"] = { ":m .-2<CR>==" },
			-- Disabled
			["<leader>d"] = false,
			["<leader>gc"] = false,
		},
		i = {},
		v = {
			-- Move lines up and down
			["<M-S-j>"] = { ":m '>+1<CR>gv=gv" },
			["<M-S-k>"] = { ":m '<-2<CR>gv=gv" },
			["<C-j>"] = { "10j" },
			["<C-k>"] = { "10k" },
			["<M-l>"] = { "$" },
			["<M-h>"] = { "0" },
			["<C-l>"] = { "w" },
			["<C-h>"] = { "b" },
			-- Indent
			["<Tab>"] = { ">gv" },
			["<S-Tab>"] = { "<gv" },
			-- No cut
			["d"] = { '"_d' },
			["c"] = { '"_c' },
			["D"] = { '"_D' },
		},
		t = {
			["<leader>dq"] = { "<C-\\><C-n>:q<CR>" },
			["jk"] = false,
			["<C-l>"] = false,
		},
		c = {},
	},
	plugins = {
		init = {
			["akinsho/bufferline.nvim"] = { disable = true },
			["max397574/better-escape.nvim"] = { disable = true },
			["nvim-neo-tree/neo-tree.nvim"] = { disable = true },
			{ "francoiscabrol/ranger.vim" },
			{ "rbgrouleff/bclose.vim" },
			{ "puremourning/vimspector", tag = "*" },
			{
				"ray-x/lsp_signature.nvim",
				config = function()
					require("lsp_signature").setup = {
						floating_window = false,
						handler_opts = {
							border = "none", -- double, rounded, single, shadow, none
						},
					}
				end,
			},
			{ "github/copilot.vim" },
			{ "kamykn/spelunker.vim" },
			{
				"akinsho/git-conflict.nvim",
				config = function()
					require("git-conflict").setup = {
						default_mappings = false,
					}
				end,
			},
			{ "tpope/vim-surround" },
			{ "easymotion/vim-easymotion" },
			{"nathom/filetype.nvim"}
		},
		["null-ls"] = require("user.plugins.null-ls"),
		["alpha"] = require("user.plugins.alpha"),
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

require("user.plugins.copilot")(config)
require("user.plugins.lsp_signature")(config)
require("user.plugins.telescope")(config)
require("user.plugins.git-conflict")(config)
require("user.plugins.vimspector")(config)
require("user.plugins.ranger")(config)

vim.g.did_load_filetypes = 1

return config
