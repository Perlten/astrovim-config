function Setup(config)
  config.mappings.n["<leader>ee"] = { ":RangerWorkingDirectory<CR>" }
  config.mappings.n["<leader>ec"] = { ":RangerCurrentFile<CR>" }
  config.mappings.n["<leader>sc"] = { ":noh<CR>" }
  config.mappings.n["<leader>dd"] = { ":call vimspector#Launch()<CR>" }
  config.mappings.n["<leader>db"] = { ":call vimspector#ToggleBreakpoint()<CR>" }
  config.mappings.n["<leader>dcb"] =
    { ":call vimspector#ToggleBreakpoint({ 'condition': '' })<left><left><left><left>" }
  config.mappings.n["<leader>dj"] = { ":call vimspector#StepOver()<CR>" }
  config.mappings.n["<leader>dl"] = { ":call vimspector#StepInto()<CR>" }
  config.mappings.n["<leader>dh"] = { ":call vimspector#StepOut()<CR>" }
  config.mappings.n["<leader>dx"] = { ":call vimspector#RunToCursor()<CR>" }
  config.mappings.n["<leader>dc"] = { ":call vimspector#Continue()<CR>" }
  config.mappings.n["<leader>dr"] = { ":call vimspector#Restart()<CR>" }
  config.mappings.n["<leader>ds"] = { ":call vimspector#Stop()<CR>" }
  config.mappings.n["<leader>dq"] = { ":VimspectorReset<CR>" }
  config.mappings.n["<leader>dccb"] = { ":call vimspector#ClearBreakpoints()<CR>" }
  config.mappings.n["<leader>di"] = { "<Plug>VimspectorBalloonEval" }
end
return Setup
