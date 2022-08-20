local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {
    "                    . .:.:.:.:. .:\\     /:. .:.:.:.:. ,",
    "               .-._  `..:.:. . .:.:`- -':.:. . .:.:.,'  _.-.",
    "              .:.:.`-._`-._..-''_...---..._``-.._.-'_.-'.:.:.",
    "           .:.:. . .:_.`' _..-''._________,``-.._ `.._:. . .:.:.",
    "        .:.:. . . ,-'_.-''      ||_-(O)-_||      ``-._`-. . . .:.:.",
    "       .:. . . .,'_.'           '---------'           `._`.. . . .:.",
    "     :.:. . . ,','               _________               `.`. . . .:.:",
    "    `.:.:. .,','            _.-''_________``-._            `._.     _.'",
    "  -._  `._./ /            ,'_.-'' ,       ``-._`.          ,' '`:..'  _.-",
    " .:.:`-.._' /           ,','                   `.`.       /'  '  \\\\.-':.:.",
    " :.:. . ./ /          ,','               ,       `.`.    / '  '  '\\\\. .:.:",
    ":.:. . ./ /          / /    ,                      \\ \\  :  '  '  ' \\\\. .:.:",
    ".:. . ./ /          / /            ,          ,     \\ \\ :  '  '  ' '::. .:.",
    ":. . .: :    o     / /                               \\ ;'  '  '  ' ':: . .:",
    ".:. . | |   /_\\   : :     ,                      ,    : '  '  '  ' ' :: .:.",
    ":. . .| |  ((<))  | |,          ,       ,             |\\'__',-._.' ' ||. .:",
    ".:.:. | |   `-'   | |---....____                      | ,---\\/--/  ' ||:.:.",
    "------| |         : :    ,.     ```--..._   ,         |''  '  '  ' ' ||----",
    "_...--. |  ,       \\ \\             ,.    `-._     ,  /: '  '  '  ' ' ;;..._",
    ":.:. .| | -O-       \\ \\    ,.                `._    / /:'  '  '  ' ':: .:.:",
    ".:. . | |_(`__       \\ \\                        `. / / :'  '  '  ' ';;. .:.",
    ":. . .<' (_)  `>      `.`.          ,.    ,.     ,','   \\  '  '  ' ;;. . .:",
    ".:. . |):-.--'(         `.`-._  ,.           _,-','      \\ '  '  '//| . .:.",
    ":. . .;)()(__)(___________`-._`-.._______..-'_.-'_________\\'  '  //_:. . .:",
    ".:.:,' \\/\\/--\\/--------------------------------------------`._',;'`. `.:.:.",
    ":.,' ,' ,'  ,'  /   /   /   ,-------------------.   \\   \\   \\  `. `.`. `..:",
    ",' ,'  '   /   /   /   /   //                   \\\\   \\   \\   \\   \\  ` `"
}

-- Set menu
dashboard.section.buttons.val = {
    dashboard.button("e", "  > Browse", ":RangerWorkingDirectory<CR>"),
    dashboard.button("f", "  > Find file", ":Telescope find_files<CR>"),
    dashboard.button("r", "  > Recent", ":Telescope oldfiles<CR>"),
    dashboard.button("s", "  > Settings", ":e ~/.config/nvim/init.vim <CR>"),
    dashboard.button("n", "  New file", ":ene <BAR> startinsert <CR>"),
    dashboard.button("q", "  > Quit NVIM", ":qa<CR>")
}

dashboard.section.footer.val = {
    "“Don’t let the Muggles get you down.”",
    "— Ron Weasley"
}
-- Send config to alpha
alpha.setup(dashboard.opts)

-- -- Disable folding on alpha buffer
-- vim.cmd([[
--     autocmd FileType alpha setlocal nofoldenable
-- ]])
