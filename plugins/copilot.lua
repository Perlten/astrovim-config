function Setup(_)
    vim.api.nvim_exec(
        [[
      augroup COMPE

      autocmd!

      autocmd VimEnter * call timer_start(0, {_->execute('imap <silent><script><expr> <C-A> copilot#Accept("\<CR>")')})

      augroup END

    ]],
        false
    )
    vim.g.copilot_no_tab_map = true
    vim.g.copilot_filetypes = {["*"] = true}
end

return Setup
