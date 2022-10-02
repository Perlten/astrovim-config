return {
  n = {
    -- Vimspector
    ["<leader>sc"] = { ":noh<CR>" },
    ["<leader>dd"] = { ":call vimspector#Launch()<CR>" },
    ["<leader>db"] = { ":call vimspector#ToggleBreakpoint()<CR>" },
    ["<leader>dcb"] = { ":call vimspector#ToggleBreakpoint({ 'condition': '' })<left><left><left><left>" },
    ["<leader>dj"] = { ":call vimspector#StepOver()<CR>" },
    ["<leader>dl"] = { ":call vimspector#StepInto()<CR>" },
    ["<leader>dh"] = { ":call vimspector#StepOut()<CR>" },
    ["<leader>dx"] = { ":call vimspector#RunToCursor()<CR>" },
    ["<leader>dc"] = { ":call vimspector#Continue()<CR>" },
    ["<leader>dr"] = { ":call vimspector#Restart()<CR>" },
    ["<leader>ds"] = { ":call vimspector#Stop()<CR>" },
    ["<leader>dq"] = { ":VimspectorReset<CR>" },
    ["<leader>dccb"] = { ":call vimspector#ClearBreakpoints()<CR>" },
    ["<leader>di"] = { "<Plug>VimspectorBalloonEval" },
  },
}
