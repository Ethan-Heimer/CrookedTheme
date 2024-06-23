local crooked = require("crookedtheme.functions")
local crookedGUI = require("crookedtheme.gui")

vim.api.nvim_create_user_command("ThemeApply", 
    function(opts)
        local theme = crooked.GetTheme(opts.args)
        crooked.Apply(theme)
    end,
    {nargs='?'}
)

vim.api.nvim_create_user_command("ThemeList", 
    function ()
        for _,v in pairs(crooked.GetThemes()) do
            print(v)
        end
    end,
    {}
)

vim.api.nvim_create_user_command("ThemeSelect", 
    function ()
        crookedGUI.ShowGUI()
    end,
    {}
)
