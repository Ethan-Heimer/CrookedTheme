local crooked = require("crookedtheme.functions")

vim.api.nvim_create_user_command("Theme", 
    function(opts)
        crooked.Apply(opts.args)
    end,
    {nargs='?'}
)

vim.api.nvim_create_user_command("ListThemes", 
    function ()
        for _,v in pairs(crooked.GetThemes()) do
            print(v)
        end
    end,
    {}
)
