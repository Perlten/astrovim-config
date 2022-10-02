local mappings = {
  n = {
    -- Disabled
    ["<leader>d"] = false,
    ["<leader>gc"] = false,

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
    ["<M-j>"] = { ":m .+1<CR>==" },
    ["<M-k>"] = { ":m .-2<CR>==" },
  },
  i = {},
  v = {
    -- Move lines up and down
    ["<M-j>"] = { ":m '>+1<CR>gv=gv" },
    ["<M-k>"] = { ":m '<-2<CR>gv=gv" },
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
}

local function tableMerge(t1, t2)
    for k,v in pairs(t2) do
        if type(v) == "table" then
            if type(t1[k] or false) == "table" then
                tableMerge(t1[k] or {}, t2[k] or {})
            else
                t1[k] = v
            end
        else
            t1[k] = v
        end
    end
    return t1
end

mappings = tableMerge(mappings, require("user.plugins.ranger.mappings"))
mappings = tableMerge(mappings, require("user.plugins.vimspector.mappings"))
mappings = tableMerge(mappings, require("user.plugins.git-conflict.mappings"))

return mappings


