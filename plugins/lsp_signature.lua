function Setup(_)
    require "lsp_signature".setup(
        {
            floating_window = false,
            handler_opts = {
                border = "none" -- double, rounded, single, shadow, none
            }
        }
    )
end

return Setup
