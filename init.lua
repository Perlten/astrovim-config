local config = {
    options = {
        opt = {
            so = 999
        }
    },
    mappings = {
        -- first key is the mode
        n = {
            ["M-s"] = {"<Escape>"},
            -- Movement
            ["<C-j>"] = {"10j"},
            ["<C-k>"] = {"10k"},
            ["<M-l>"] = {"$"},
            ["<M-h>"] = {"0"},
            ["<C-l>"] = {"w"},
            ["<C-h>"] = {"b"},
            -- Indent
            ["<Tab>"] = {">>"},
            ["<S-Tab>"] = {"<<"},
            -- No cut
            ["x"] = {'"_x'},
            ["d"] = {'"_d'},
            ["c"] = {'"_c'},
            ["D"] = {'"_D'},
            -- Random
            ["<leader>tq"] = {":tabclose<CR>"},
            ["<leader>wsv"] = {":vsplit<CR>"},
            ["<leader>wsh"] = {":split<CR>"},
            ["<leader>ww"] = {":w<CR>"},
            ["<leader>wa"] = {":wa<CR>"},
            -- Window movement
            ["<leader>1"] = {":1 wincmd w<CR>"},
            ["<leader>2"] = {":2 wincmd w<CR>"},
            ["<leader>3"] = {":3 wincmd w<CR>"},
            ["<leader>4"] = {":4 wincmd w<CR>"},
            ["<leader>5"] = {":5 wincmd w<CR>"},
            ["<leader>6"] = {":6 wincmd w<CR>"},
            ["<leader>7"] = {":7 wincmd w<CR>"},
            ["<leader>8"] = {":8 wincmd w<CR>"},
            ["<leader>9"] = {":9 wincmd w<CR>"},
            ["<leader><tab>"] = {"<c-w><c-p>"},
            -- Vimspector
            ["<leader>ee"] = {":RangerWorkingDirectory<CR>"},
            ["<leader>ec"] = {":RangerCurrentFile<CR>"},
            ["<leader>sc"] = {":noh<CR>"},
            ["<leader>dd"] = {":call vimspector#Launch()<CR>"},
            ["<leader>db"] = {":call vimspector#ToggleBreakpoint()<CR>"},
            ["<leader>dcb"] = {":call vimspector#ToggleBreakpoint({ 'condition': '' })<left><left><left><left>"},
            ["<leader>dj"] = {":call vimspector#StepOver()<CR>"},
            ["<leader>dl"] = {":call vimspector#StepInto()<CR>"},
            ["<leader>dh"] = {":call vimspector#StepOut()<CR>"},
            ["<leader>dx"] = {":call vimspector#RunToCursor()<CR>"},
            ["<leader>dc"] = {":call vimspector#Continue()<CR>"},
            ["<leader>dr"] = {":call vimspector#Restart()<CR>"},
            ["<leader>ds"] = {":call vimspector#Stop()<CR>"},
            ["<leader>dq"] = {":VimspectorReset<CR>"},
            ["<leader>dccb"] = {":call vimspector#ClearBreakpoints()<CR>"},
            ["<leader>di"] = {"<Plug>VimspectorBalloonEval"},
            -- LSP
            ["<leader>lgd"] = {":lua vim.lsp.buf.definition()<cr>"},
            ["<leader>ll"] = {":lua vim.lsp.buf.hover()<cr>"},
            -- Move lines up and down
            ["<M-S-j>"] = {":m .+1<CR>=="},
            ["<M-S-k>"] = {":m .-2<CR>=="},
            -- Disabled
            ["<leader>d"] = false
        },
        i = {
            ["<M-s>"] = {"<Escape>"}
        },
        v = {
            ["D"] = {'"_D'},
            -- Move lines up and down
            ["<M-S-j>"] = {":m '>+1<CR>gv=gv"},
            ["<M-S-k>"] = {":m '<-2<CR>gv=gv"},
            ["<C-j>"] = {"10j"},
            ["<C-k>"] = {"10k"},
            ["<M-l>"] = {"$"},
            ["<M-h>"] = {"0"},
            ["<C-l>"] = {"w"},
            ["<C-h>"] = {"b"},
            -- Indent
            ["<Tab>"] = {">gv"},
            ["<S-Tab>"] = {"<gv"}
        },
        t = {
            ["<M-s>"] = {"<C-\\><C-n>"},
            ["<leader>tq"] = {"<C-\\><C-n>:q<CR>"},
            ["jk"] = false,
            ["<C-l>"] = false
        },
        c = {
            ["<M-s>"] = {"<C-C>"}
        }
    },
    plugins = {
        init = {
            ["akinsho/bufferline.nvim"] = {disable = true},
            ["max397574/better-escape.nvim"] = {disable = true},
            {"francoiscabrol/ranger.vim"},
            {"rbgrouleff/bclose.vim"},
            {"puremourning/vimspector"},
            {"ray-x/lsp_signature.nvim"},
            {"github/copilot.vim"},
            {"kamykn/spelunker.vim"},
            {"sbdchd/neoformat"}
        }
    },
    cmp = {
        source_priority = {
            nvim_lsp = 1000,
            luasnip = 750,
            buffer = 500,
            path = 250
        }
    }
}

vim.g.ranger_map_keys = 0
vim.g.ranger_command_override = 'ranger --cmd "set show_hidden=true"'

require("user.plugins.alpha")
require("user.plugins.neoformat")(config)
require("user.plugins.copilot")(config)
require("user.plugins.lsp_signature")(config)

return config
